VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9360
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10050
   LinkTopic       =   "Form1"
   ScaleHeight     =   9360
   ScaleWidth      =   10050
   StartUpPosition =   3  'Windows Default
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid3 
      Height          =   1575
      Left            =   2040
      TabIndex        =   19
      Top             =   7200
      Width           =   7575
      _ExtentX        =   13361
      _ExtentY        =   2778
      _Version        =   393216
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid2 
      Height          =   2295
      Left            =   4320
      TabIndex        =   18
      Top             =   2760
      Width           =   5535
      _ExtentX        =   9763
      _ExtentY        =   4048
      _Version        =   393216
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "Form1.frx":0000
      Left            =   2520
      List            =   "Form1.frx":0010
      TabIndex        =   17
      Text            =   "1"
      Top             =   6000
      Width           =   1575
   End
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
      Height          =   1695
      Left            =   4320
      TabIndex        =   10
      Top             =   240
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   2990
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
   Begin VB.Label Label8 
      Caption         =   "Orden del polinomio:"
      Height          =   375
      Left            =   2640
      TabIndex        =   16
      Top             =   5640
      Width           =   1695
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

Dim k, rho, cp, h, T0, Tf, ttotal, L, D, pi, segundos, E, Ts As Double
Dim n, tpaso As Integer

k = 30
cp = 650
rho = 7650
h = 225 'coeficiente de transferencia de calor (W/m^2°c)
T0 = Val(Text3.Text) 'TEMPERATURA DE AUSTENIZACION
Tf = Val(Text2.Text) 'TEMPERATURA DEL FLUIDO
ttotal = Val(Text6.Text) 'TIEMPO TOTAL DE CALCULO EN SEGUNDOS
'L = Val(Text5.Text) 'LONGITUD DE LA BARRA
D = Val(Text4.Text) 'DIAMETRO DE LA BARRA
n = Val(Text1.Text) 'NUMERO DE NODOS
dr = ((D / 2) / (n - 1)) 'DELTA DE RADIO
pi = 3.1416
it = Val(Text7.Text) 'INTERVALOS DE TIEMPO
tpaso = ttotal / it 'TIEMPO DE PASO
Ts = Val(Combo1.Text)
'TA1 = 728


'zona del programa para calculo de areas

ReDim A(n) As Double

For i = 1 To n
    If i = n Then
        A(i) = 2 * pi * ((i - 1) * dr) '* L
    Else
        A(i) = 2 * pi * ((i - 0.5) * dr) '* L
    End If
Next i

'zona del programa para calcular volumenes

ReDim V(n) As Double

For i = 1 To n
    If i = 1 Then
        V(i) = pi * ((dr / 2) ^ 2) '* L
    ElseIf i = n Then
        V(i) = ((((i - 1) * dr) ^ 2) - (((i - 1.5) * dr) ^ 2)) * pi '* L
    Else
        V(i) = ((((i - 0.5) * dr) ^ 2) - (((i - 1.5) * dr) ^ 2)) * pi '* L
     End If
Next i

'ahora REDIMENSIONAMOS TERMINOS PARA QUE ESTOS PUEDAN SER EVALUADOS EN FUNCION DE LA POSICION (i>x>n)

ReDim T(n) As Double
ReDim Q(n) As Double
ReDim TN(n) As Double 'representa el calor generado por transformacion de fase
ReDim Ca(n) As Double 'Constante del metodo de thomas, utilizado para evaluar el problema implicito, una dimension con gradientes
ReDim Cb(n) As Double 'Constante del metodo de thomas, que  resuelve la diagonal de una matriz
ReDim Cc(n) As Double 'Constante de thomas
ReDim Cd(n) As Double 'Constante de thomas
ReDim beta(n) As Double 'terminos evaluados en el metodo de thomas
ReDim gama(n) As Double 'terminos evaluados en el metodo de thomas
ReDim F(n) As Double 'fraccion transformada
ReDim DELTAF(n) As Double 'comparacion de fraciones transformadas en el tiempo j y j+1
ReDim FRACCION(n) As Double 'comparacion de fraciones transformadas en el tiempo j y j+1
ReDim TTT(n) As Double
ReDim TR(n) As Double
ReDim Av_b(n) As Double
ReDim Av_n(n) As Double
ReDim DTV(n) As Double

ReDim Bandera(n) As Double
ReDim bandera2(n) As Double
ReDim bandera3(n) As Double
ReDim rapidez(n) As Double
ReDim Matrix(n, Ts + 1) As Double
ReDim Bandera5(n, Ts + 1) As Double
'ReDim k(n) As Double 'conductividad del material, para hacer propiedades no constantes
'ReDim cp(n) As Double 'capacidad calorifica, problema con propiedades no constantes
'ReDim CR(n) As Double 'termino utilizado para encontrar la rapidez de enfriamiento
'ReDim Etiqueta(n) As Double

For i = 1 To n
    T(i) = T0
Next i

For i = 1 To n
    F(i) = 0
    Q(i) = 0
    TTT(i) = 0
Next i

For i = 1 To n
    DELTAF(i) = 0
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

For i = 1 To n
    Bandera(i) = 0
    bandera2(i) = 0
    bandera3(i) = 0
Next i

For z = 2 To tpaso

    Tiempo = (z - 1) * it
    salida = Str(Tiempo)

    For i = 1 To n
        Q(i) = 0
    Next i



'    For i = 1 To n
'            If T(i) > 400 Then
'                    cp(i) = -917 + 7.28 * T(i) - (0.01094 * T(i) ^ 2) + 0.00000558 * T(i) ^ 3
'            Else
'                    cp(i) = 50.864 - 0.02637 * T(i) - (0.000014 * (T(i) ^ 2))
'            End If
'    Next i

'   For i = 1 To n
'            If T(i) > 400 Then
'                    k(i) = 49.58 - (0.0284 * T(i))
'            Else
'                k(i) = 50.864 - 0.02637 * T(i) - (0.000014 * (T(i) ^ 2))
'            End If
'    Next i

CALCULAR:

    For i = 1 To n
        If i = 1 Then
            Ca(i) = 0
        Else
            'prom1 = ((k(i - 1) + k(i)) / 2)
            Ca(i) = -(k * A(i - 1)) / dr
        End If
    Next i


    For i = 1 To n
        If i = 1 Then
           
            'kprom2 = ((k(i + 1) + k(i)) / 2)
            Cb(i) = ((rho * cp * V(i)) / it) + ((k * A(i)) / dr)
        ElseIf i = n Then
            'kprom1 = ((k(i - 1) + k(i)) / 2)
            
            Cb(i) = ((rho * cp * V(i)) / it) + ((k * A(i - 1)) / dr) + (h * A(i))
        Else
            'kprom1 = ((k(i - 1) + k(i)) / 2)
            'kprom2 = ((k(i + 1) + k(i)) / 2)
            Cb(i) = ((rho * cp * V(i)) / it) + ((k * A(i - 1)) / dr) + ((k * A(i)) / dr)
            
        End If
    Next i
    
    For i = 1 To n
        If i = n Then
            Cc(i) = 0
        Else
            'kprom2 = ((k(i + 1) + k(i)) / 2)
            Cc(i) = -(k * A(i)) / dr
        End If
        
    Next i

    For i = 1 To n
        If i = n Then
            Cd(i) = (T(i) * ((rho * cp * V(i)) / it)) + (Tf * h * A(i)) + (Q(i) * V(i))
        Else
            Cd(i) = (T(i) * ((rho * cp * V(i)) / it)) + (Q(i) * V(i))
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
    
    TN(n) = gama(n)
    
    For i = 1 To n - 1
        TN(n - i) = gama(n - i) - ((Cc(n - i) * TN(n - i + 1)) / beta(n - i))
    Next i
    
    If bandera4 = 1 Then
    
        suma = 0
        For i = 1 To n
            suma = suma + ((TR(i) - TN(i)) ^ 2)
        Next i
        
        E = Sqr(suma)
        
        If E < 0.01 Then GoTo CONTINUA
        
    End If
    

        
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
    
    
    
'aqui esta la mayoria de las lineas sacadas del problema newtoniano con transformacion
  
  segundos = it * (z - 1)
  
  
For i = 1 To n
  If (segundos > 1000) Then
        TTT(i) = (1.274 * Log(segundos)) + 699.23
    ElseIf (segundos > 100) Then
        TTT(i) = (6.6682 * Log(segundos)) + 663.61
    ElseIf (segundos > 10) Then
        TTT(i) = (12.514 * Log(segundos)) + 636.28
    ElseIf (segundos > 2) Then
        TTT(i) = (28.913 * Log(segundos)) + 599.62
    ElseIf (segundos > 1) Then
        TTT(i) = (56.265 * Log(segundos)) + 579
    ElseIf (segundos > 0.8) Then
        TTT(i) = (192.7 * Log(segundos)) + 579
    End If
Next i
'ETIQUETA1:
   ' TN = (T * (1 - ((h * A * DT) / (rho * cp * V)))) + ((Tf * h * A * DT) / (rho * cp * V)) + ((Q * DT) / (rho * cp))
    'T = TF + (TI - TF) * Exp((-h * A * Tiempo) / (rho * Cp * V))

For i = 1 To n
    'If bandera(i) = 0 Then
        'If TTT(i) > TN(i) Then
            'Mensaje = MsgBox("He cruzado la nariz del diagrama TTT al tiempo:" & Str(Tiempo), vbOKOnly)
            ' bandera(i) = 1
        'End If
    'End If

    If bandera2(i) = 0 Then
        If TTT(i) > TN(i) Then
'ETIQUETA1:
            Av_b(i) = 0.0205 * Exp(-0.5 * (((TN(i) - 529.27) / 37.85) ^ 2))
            Av_n(i) = 23.3425 - (0.157 * TN(i)) + (0.0003636 * (TN(i) ^ 2)) - (0.000000262 * (TN(i) ^ 3))
            F(i) = 1 - Exp(-Av_b(i) * (it ^ Av_n(i)))
            Q(i) = rho * 75800 * (F(i) / it)
            'TR(i) = TN(i)
            'TN(i) = (T(i) * (1 - ((h * A(i) * it) / (rho * cp * V(i))))) + ((Tf * h * A(i) * it) / (rho * cp * V(i))) + ((Q(i) * it) / (rho * cp))
            'If ((TR(i) - TN(i)) ^ 2) > 0.00001 Then GoTo ETIQUETA1
            bandera2(i) = 1
           ' GoTo ETIQUETA2
        End If
    End If
 Next i
 
 For i = 1 To n
    If bandera3(i) = 0 Then
        If TTT(i) > TN(i) Then
            If FRACCION(i) < 1 Then
ETIQUETA3:
                Av_b(i) = 0.0205 * Exp(-0.5 * (((TN(i) - 529.27) / 37.85) ^ 2))
                Av_n(i) = 23.3425 - (0.157 * TN(i)) + (0.0003636 * (TN(i) ^ 2)) - (0.000000262 * (TN(i) ^ 3))
                DTV(i) = it + (((Log(1 / (1 - FRACCION(i)))) / Av_b(i)) ^ (1 / Av_n(i)))
                F(i) = 1 - Exp(-Av_b(i) * (DTV(i) ^ Av_n(i)))
                DELTAF(i) = F(i) - FRACCION(i)
                Q(i) = rho * 75800 * (DELTAF(i) / it)
                'TR(i) = TN(i)
                'TN(i) = (T(i) * (1 - ((h * A(i) * it) / (rho * cp * V(i))))) + ((Tf * h * A(i) * it(i)) / (rho * cp * V(i))) + ((Q * DT) / (rho * cp))
                'If ((TR - TN) ^ 2) > 0.01 Then GoTo ETIQUETA3
                'GoTo ETIQUETA2
            Else
                bandera3(i) = 1
            End If
        End If
    End If
Next i
    
For i = 1 To n
    TR(i) = TN(i)
Next i

bandera4 = 1

GoTo CALCULAR

CONTINUA:

bandera4 = 0
    
'ETIQUETA2:
    
    'MSFlexGrid1.Row = i
    'MSFlexGrid1.Col = 0
    'MSFlexGrid1.Text = Str(Tiempo)
    'MSFlexGrid1.Col = 1
    'MSFlexGrid1.Text = Str(TN)
    
    'salida = Str(Tiempo) & "," & Str(TN) & "," & Str(F) & "," & Str(Q)
    'Print #filenum, salida
       
For i = 1 To n
       salida = salida & "," & Str(TN(i))
Next i

For i = 1 To n
    salida = salida & "," & Str(F(i))
Next i

Print #filenum, salida
TA1 = 728
For i = 1 To n
        If TN(i) < TA1 Then
            For j = 1 To Ts + 1
                If (Bandera5(i, j) = 0) Then
                    Matrix(i, j) = TN(i)
                    Bandera5(i, j) = 1
                    GoTo Etiqueta
                End If
            Next j
        End If
Etiqueta:
    Next i
       
For i = 1 To n
    FRACCION(i) = F(i)
    T(i) = TN(i)
Next i
    
'hasta aqui llegan las lineas del programa newtoniano para el calculo de la fraccion transformada

'For i = 1 To n
'        T(i) = TN(i)
'Next i

Next z
    
Close #filenum

MSFlexGrid2.Rows = Ts + 2
MSFlexGrid2.Cols = n + 1
For i = 1 To n
    For j = 1 To Ts + 1
        MSFlexGrid2.Row = j
        MSFlexGrid2.Col = i
        MSFlexGrid2.Text = Str(Matrix(i, j))
    Next j
Next i

'CALCULO DE RAPIDECES DE ENFRIAMIENTO

MSFlexGrid3.Cols = n + 1
MSFlexGrid3.Rows = 2
MSFlexGrid3.Row = 1
For i = 1 To n
    If (Combo1.Text = 1) Then rapidez(i) = Abs((Matrix(i, Ts + 1) - Matrix(i, Ts)) / it)
    If (Combo1.Text = 2) Then rapidez(i) = Abs(((-Matrix(i, Ts + 1)) + (4 * Matrix(i, Ts)) - (3 * Matrix(i, Ts - 1))) / (2 * it))
    If (Combo1.Text = 3) Then rapidez(i) = Abs(((2 * Matrix(i, Ts + 1)) - (9 * Matrix(i, Ts)) + (18 * Matrix(i, Ts - 1)) - (11 * Matrix(i, Ts - 2))) / (6 * it))
    If (Combo1.Text = 4) Then rapidez(i) = Abs(((-3 * Matrix(i, Ts + 1)) + (16 * Matrix(i, Ts)) - (36 * Matrix(i, Ts - 1)) + (48 * Matrix(i, Ts - 2)) - (25 * Matrix(i, Ts - 3))) / (12 * it))
    MSFlexGrid3.Col = i
    MSFlexGrid3.Text = Str(rapidez(i))
Next i





End Sub

