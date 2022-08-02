import React from "react"
import {BiCheck} from "react-icons/bi"
import "./services.css"

const Services = () => {
  return (
    <section id="services">
      <div className="titulo">
        <h3>What I do</h3>
        <h2>Services</h2>
      </div>
      <div className="container services_container">
        <article className='column'>
          <div className='service'>
            <h2>Development</h2>
          </div>
          <ul className='list'>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
          </ul>
        </article>        
        <article className='column'>
          <div className='service'>
            <h2>UI/UNIX</h2>
          </div>
          <ul className='list'>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
          </ul>
        </article>        
        <article className='column'>
          <div className='service'>
            <h2>CiberSecurity</h2>
          </div>
          <ul className='list'>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
            <li><BiCheck className='icon'/><p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p></li>
          </ul>
        </article>        
      </div>
    </section>
  )
}

export default Services
