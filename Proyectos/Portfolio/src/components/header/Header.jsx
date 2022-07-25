import React from 'react'
import './header.css'
import CTA from './CTA'
import HeaderSocials from './HeaderSocials'

const Header = () => {
  return (
    <header>
      <div className="container header_container">
        <h5>Hola soy</h5>
        <h1>Alan Daniel Gaona Villa</h1>
        <h5 className="text-light">Fullstack Developer/Cibersegurity</h5>
        <CTA/>
        <HeaderSocials/>
        <div className="me">
          <img src='' alt="Yo" />
        </div>

        <a href="#contact" className='scroll_down'>Scroll Down</a>
      </div>
    </header>
  )
}

export default Header