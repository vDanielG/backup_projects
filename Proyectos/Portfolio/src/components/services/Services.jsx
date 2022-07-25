import React from 'react'
import './services.css'
import {BiCheck} from 'react-icons/bi'

const Services = () => {
  return (
    <section id='services'>
      <h5>Que ofrezco</h5>
      <h2>Servicios</h2>

      <div className="container services_container">
        <article className="service">
          <div className="service_head">
            <h3>UI/UX Design</h3>
          </div>

          <ul className="service_list">
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>            
          </ul>
        </article>

        {/*END OF UI/UX*/}

        <article className="service">
          <div className="service_head">
            <h3>Web Development</h3>
          </div>

          <ul className="service_list">
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>            
          </ul>
        </article>
        {/*END OF WebDevelopment*/}

        <article className="service">
          <div className="service_head">
            <h3>Cibersecurity</h3>
          </div>

          <ul className="service_list">
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>
            <li>
              <BiCheck className="service_list-icon"/>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </li>            
          </ul>
        </article>

        {/*END OF CIBERSECURITY*/}
      </div>
    </section>
  )
}

export default Services