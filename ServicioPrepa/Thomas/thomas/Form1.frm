VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2790
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3810
   LinkTopic       =   "Form1"
   ScaleHeight     =   2790
   ScaleWidth      =   3810
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text7 
      Height          =   285
      Left            =   2400
      TabIndex        =   15
      Text            =   "0.5"
      Top             =   4920
      Width           =   1455
   End
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   7680
      TabIndex        =   13
      Text            =   "300"
      Top             =   5760
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ejecutar"
      Height          =   495
      Left            =   840
      TabIndex        =   11
      Top             =   5640
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   5055
      Left            =   4320
      TabIndex        =   10
      Top             =   240
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   8916
      _Version        =   393216
   End
   Begin VB.TextBox Text5 
      Height          =   495
      Left            =   2280
      TabIndex        =   9
      Text            =   ".0508"
      Top             =   4080
      Width           =   1455
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   2160
      TabIndex        =   7
      Text            =   ".0127"
      Top             =   3240
      Width           =   1575
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   2160
      TabIndex        =   5
      Text            =   "850"
      Top             =   2280
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   2280
      TabIndex        =   3
      Text            =   "30"
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   2160
      TabIndex        =   1
      Text            =   "10"
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label Label7 
      Caption         =   "intervalo de tiempo"
      Height          =   375
      Left            =   720
      TabIndex        =   14
      Top             =   4920
      Width           =   1335
   End
   Begin VB.Label Label6 
      Caption         =   "tiempo total"
      Height          =   255
      Left            =   5400
      TabIndex        =   12
      Top             =   5760
      Width           =   1815
   End
   Begin VB.Label Label5 
      Caption         =   "Longitud"
      Height          =   495
      Left            =   840
      TabIndex        =   8
      Top             =   4200
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "diámetro"
      Height          =   375
      Left            =   720
      TabIndex        =   6
      Top             =   3240
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   "Temperatura inicial"
      Height          =   495
      Left            =   840
      TabIndex        =   4
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Temperatura del fluido"
      Height          =   375
      Left            =   720
      TabIndex        =   2
      Top             =   1320
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Numero de nodos"
      Height          =   375
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()

Dim k, rho, cp, h, T0, Tf, ttotal, L, D, pi, TA1 As Double
Dim n, tpaso As Integer

'k = 30
h = 225 'coeficiente de transferencia de calor (W/m^2°c)
T0 = Val(Text3.Text) 'TEMPERATURA DE AUSTENIZACION
Tf = Val(Text2.Text) 'TEMPERATURA DEL FLUIDO
ttotal = Val(Text6.Text) 'TIEMPO TOTAL DE CALCULO EN SEGUNDOS
L = Val(Text5.Text) 'LONGITUD DE LA BARRA
D = Val(Text4.Text) 'DIAMETRO DE LA BARRA
n = Val(Text1.Text) 'NUMERO DE NODOS
dr = ((D / 2) / (n - 1)) 'DELTA DE RADIO
pi = 3.1416
it = Val(Text7.Text) 'INTERVALOS DE TIEMPO
tpaso = ttotal / it 'TIEMPO DE PASO
TA1 = 728


'zona del programa para calculo de ares

ReDim A(n) As Double

For i = 1 To n
    If i = n Then
        A(i) = 2 * pi * ((i - 1) * dr) * L
    Else
        A(i) = 2 * pi * ((i - 0.5) * dr) * L
    End If
Next i

'zona del programa para calcular volumenes

ReDim V(n) As Double

For i = 1 To n
    If i = 1 Then
        V(i) = pi * ((dr / 2) ^ 2) * L
    ElseIf i = n Then
        V(i) = ((((i - 1) * dr) ^ 2) - (((i - 1.5) * dr) ^ 2)) * pi * L
    Else
        V(i) = ((((i - 0.5) * dr) ^ 2) - (((i - 1.5) * dr) ^ 2)) * pi * L
     End If
Next i

'ahora REDIMENSIONAMOS TERMINOS PARA QUE ESTOS PUEDAN SER EVALUADOS EN FUNCION DE LA POSICION (i>x>n)

ReDim T(n) As Double
ReDim Q(n) As Double
ReDim Tn(n) As Double 'representa el calor generado por transformacion de fase
ReDim Ca(n) As Double 'Constante del metodo de thomas, utilizado para evaluar el problema implicito, una dimension con gradientes
ReDim Cb(n) As Double 'Constante del metodo de thomas, que  resuelve la diagonal de una matriz
ReDim Cc(n) As Double 'Constante de thomas
ReDim Cd(n) As Double 'Constante de thomas
ReDim beta(n) As Double 'terminos evaluados en el metodo de thomas
ReDim gama(n) As Double 'terminos evaluados en el metodo de thomas
ReDim k(n) As Double 'conductividad del material, para hacer propiedades no constantes
ReDim cp(n) As Double 'capacidad calorifica, problema con propiedades no constantes
ReDim CR(n) As Double 'termino utilizado para encontrar la rapidez de enfriamiento
ReDim Etiqueta(n) As Double

For i = 1 To n
    T(i) = T0
    Q(i) = 0
    
Next i

'inicializar variables,banderas,etc Estas permiten identificar cuando ya se ha pasado por cierto punto dentro de un ciclo

ruta = App.Path
historial = ruta & "\thomas.txt"
filenum = FreeFile
Open historial For Output As #filenum

salida = "Tiempo(seg)"

For i = 1 To n
    salida = salida & "," & "Temperatura" & Str(i)
Next i

Print #filenum, salida

For z = 1 To tpaso

    tiempo = z * it
    salida = Str(tiempo)
    rho = 7650
    'cp = 540
    
'Cp_aus(i)=0.1318*T(i)+508.41 270>T>1200°C
'Cp_per(i)=0.5231*T(i)+417.1  279>T>800°C
'Cp_per(i)=0.31*T(i)+477.67 0>T>270°C
For i = 1 To n
        If T(i) > 400 Then
                cp(i) = -917 + 7.28 * T(i) - (0.01094 * T(i) ^ 2) + 0.00000558 * T(i) ^ 3
        Else
                cp(i) = 50.864 - 0.02637 * T(i) - (0.000014 * (T(i) ^ 2))
        End If
Next i

For i = 1 To n
        If T(i) > 400 Then
                k(i) = 49.58 - (0.0284 * T(i))
        Else
                k(i) = 50.864 - 0.02637 * T(i) - (0.000014 * (T(i) ^ 2))
        End If
Next i

    For i = 1 To n
        If i = 1 Then
            Ca(i) = 0
        Else
            kprom1 = ((k(i - 1) + k(i)) / 2)
            Ca(i) = -(kprom1 * A(i - 1)) / dr
        End If
    Next i


    For i = 1 To n
        If i = 1 Then
           
            kprom2 = ((k(i + 1) + k(i)) / 2)
            Cb(i) = ((rho * cp(i) * V(i)) / it) + ((kprom2 * A(i)) / dr)
        ElseIf i = n Then
            kprom1 = ((k(i - 1) + k(i)) / 2)
            
            Cb(i) = ((rho * cp(i) * V(i)) / it) + ((kprom1 * A(i - 1)) / dr) + (h * A(i))
        Else
            kprom1 = ((k(i - 1) + k(i)) / 2)
            kprom2 = ((k(i + 1) + k(i)) / 2)
            Cb(i) = ((rho * cp(i) * V(i)) / it) + ((kprom1 * A(i - 1)) / dr) + ((kprom2 * A(i)) / dr)
            
        End If
    Next i
    
    For i = 1 To n
        If i = n Then
            Cc(i) = 0
        Else
            kprom2 = ((k(i + 1) + k(i)) / 2)
            Cc(i) = -(kprom2 * A(i)) / dr
        End If
        
    Next i

    For i = 1 To n
        If i = n Then
            Cd(i) = (T(i) * ((rho * cp(i) * V(i)) / it)) + (Tf * h * A(i))
        Else
            Cd(i) = (T(i) * ((rho * cp(i) * V(i)) / it))
        End If
    Next i

    For i = 1 To n
        If i = 1 Then
            beta(i) = Cb(i)
            gama(i) = Cd(i) / beta(i)
        Else
            beta(i) = Cb(i) - ((Ca(i) * Cc(i - 1)) / beta(i - 1))
            gama(i) = (Cd(i) - (Ca(i) * gama(i - 1))) / beta(i)
        End If
    Next i
    
    Tn(n) = gama(n)
    
    For i = 1 To n - 1
        Tn(n - i) = gama(n - i) - ((Cc(n - i) * Tn(n - i + 1)) / beta(n - i))
    Next i

    For i = 1 To n
        salida = salida & "," & Str(Tn(i))
    Next i

    Print #filenum, salida
    
'    For i = 1 To n
 '       If Tn(i) < TA1 Then
  '          For j = 1 To Ts + 1
   '             If (Bandera(i, j) = 0) Then
    '                Matrix(i, j) = Tn(i)
      '              Bandera(i, j) = 1
       '             GoTo Etiqueta
        '        End If
         '   Next j
        'End If
'Etiqueta:
 '   Next i
    
    For i = 1 To n
        T(i) = Tn(i)
    Next i
    
Next z
    
Close #filenum

End Sub

