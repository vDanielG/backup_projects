import React from 'react'
import './contact.css'
import {MdOutlineEmail} from 'react-icons/md'
import {AiOutlineWhatsApp} from 'react-icons/ai'
import {BsLinkedin} from 'react-icons/bs'
import {useRef} from 'react'
import emailjs from 'emailjs-com'

const Contact = () => {

  const form = useRef();

  const sendEmail = (e) => {
    e.preventDefault();

    emailjs.sendForm('YOUR_SERVICE_ID', 'YOUR_TEMPLATE_ID', form.current, 'YOUR_USER_ID')
    
    e.target.reset()
  };

  return (
    <section id='contact'>
      <h5>Get In Touch</h5>
      <h2>Contact Me</h2>
      <div className="container contact_container">
        <div className="contact_options">
          <article className="contact_option">
            <MdOutlineEmail className='contact_option-icon'/>
            <h4>Email</h4>
            <h5>adgv.99@hotmail.com</h5>
            <a href="mailto:adgv.99@hotmail.com" target="_blank">Send a message</a>
          </article>
          <article className="contact_option">
            <AiOutlineWhatsApp className='contact_option-icon'/>
            <h4>WhatsApp</h4>
            <h5>+52 443 285 0535</h5>
            <a href="https://api.whatsapp.com/send?phone+524432850535" target="_blank">Send a message</a>
          </article>
          <article className="contact_option">
            <BsLinkedin className='contact_option-icon'/>
            <h4>LinkedIn</h4>
            <h5>adgv.99@hotmail.com</h5>
            <a href="mailto:adgv.99@hotmail.com" target="_blank">Send a message</a>
          </article>
        </div>
        {/*END OF CONTACT OPTIONS*/}
        <form ref={form} onSubmit={sendEmail}>
          <input type="text" name="name" placeholder='Your Full Name' required />
          <input type="text" name="email" placeholder='Your Email' required />
          <textarea name="message" rows="7" placeholder='Your Message' required></textarea>
          <button type='submit' className='btn btn-primary'>Send Message</button>
        </form>
      </div>
    </section>
  )
}

export default Contact