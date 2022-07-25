import React from 'react'
import './footer.css'
import {BsLinkedin} from 'react-icons/bs'
import {BsFacebook} from 'react-icons/bs'
import {BsYoutube} from 'react-icons/bs'

const Footer = () => {
  return (
    <footer>
      <a href="#" className='footer_logo'>LOGO</a>

      <ul className='permalinks'>
        <li><a href="">Home</a></li>
        <li><a href="">About</a></li>
        <li><a href="">Experience</a></li>
        <li><a href="">Services</a></li>
        <li><a href="">Portfolio</a></li>
        <li><a href="">Testimonials</a></li>
        <li><a href="">Contact</a></li>
      </ul>


      <div className="footer_socials">
        <a href="https://facebook.com"><BsFacebook/></a>
        <a href="https://youtube.com"><BsYoutube/></a>
        <a href="https://linkedin.com"><BsLinkedin/></a>
      </div>

      <div className="footer_copyright">
        <small>&copy;LOGO. Todos los derechos reservados.</small>
      </div>
    </footer>
  )
}

export default Footer