import React from "react"
import {useRef} from 'react'
import emailjs from 'emailjs-com'
import {MdOutlineEmail} from 'react-icons/md'
import {AiOutlineWhatsApp} from 'react-icons/ai'
import {BsLinkedin} from 'react-icons/bs'
import './contact.css'

const Contact = () => {
    
  const form = useRef();
  
    const sendEmail = (e) => {
      e.preventDefault();
  
      emailjs.sendForm('YOUR_SERVICE_ID', 'YOUR_TEMPLATE_ID', form.current, 'YOUR_USER_ID')
      
      e.target.reset()
    }; 
  
  return (
    <section id="contact">    
      <div className="titulo">
        <h3>Get in touch</h3>
        <h2>Contact me</h2>        
      </div>   
      <div className="container contact_container">                   
        <div className="socials">
          <article className="options">
            <AiOutlineWhatsApp className="icons icon"/>
            <h4>WhatsApp</h4>
            <h5>+52 443 285 0535</h5>
            <a href="https://api.whatsapp.com/send?phone=524432850535" target='_blank'>Send Message</a>
          </article>
          <article className="options">
            <BsLinkedin className="icons icon"/>
            <h4>Linked In</h4>
            <h5>+52 443 285 0535</h5>
            <a href="https://www.linkedin.com/in/alan-daniel-gaona-villa-004643210/" target='_blank'>Send Message</a>
          </article>
          <article className="options">
            <MdOutlineEmail className="icons icon"/>
            <h4>Email</h4>
            <h5>adgv.99@hotmail.com</h5>
            <a href="mailto:adgv.99@hotmail.com" target='_blank'>Send Message</a>
          </article>
        </div>
        <form ref={form} onSubmit={sendEmail}>
          <input type="text" name="name" placeholder='Your Full Name' required />
          <input type="text" name="email" placeholder='Your Email' required />
          <textarea name="message" rows="7" placeholder='Your Message' required></textarea>
          <button type='submit' className='btn btn-primary'>Send Message</button>
        </form>
      </div>
    </section>
  );
};

export default Contact