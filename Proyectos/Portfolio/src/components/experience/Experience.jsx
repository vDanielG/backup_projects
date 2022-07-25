import React from 'react'
import './experience.css'
import {BsPatchCheckFill as BsPatchCheckFill} from 'react-icons/bs'

const Experience = () => {
  return (
    <section id='experience'>
      <h5>Que Habilidades Tengo</h5>
      <h2>Mi Experiencia</h2>

      <div className="container experience_container">
        <div className="experience_development">
          <h3>Development</h3>
          <div className="experience_content">
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>PHP</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>CSS</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>JAVA</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>PYTHON</h4>
                <small className='text-light'>Intermediate</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>C++</h4>
                <small className='text-light'>Intermediate</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>VUE</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>REACT</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>DATABASE</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
          </div>
        </div>
        <div className="experience_cibersegurity">
          <h3>Cibersecurity</h3>
          <div className="experience_content">
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>PRIVILEGES ELEVATION</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>PENTESTING</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>JAVA</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>PYTHON</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>C++</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>VUE</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>REACT</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
            <article className="experience_details">
              <BsPatchCheckFill className='experience_details-icon'/>
              <div>
                <h4>DATABASE</h4>
                <small className='text-light'>Experienced</small>
              </div>
            </article>
          </div>
        </div>
      </div>
    </section>
  )
}

export default Experience