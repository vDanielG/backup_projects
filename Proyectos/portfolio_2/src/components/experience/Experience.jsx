import React from "react";
import './experience.css'
import {FaReact} from 'react-icons/fa'
import {FaJava} from 'react-icons/fa'
import {FaVuejs} from 'react-icons/fa'
import {FaPhp} from 'react-icons/fa'
import {FaPython} from 'react-icons/fa'

const Experience = () => {
  return (
    <section id="experience">      
      <div className="titulo">
        <h3>Habilities</h3>
        <h2>My experience</h2>          
      </div>
      <div className="container experience_container">        
        <div className="cards">
          <article className="abilitie_card">
            <FaReact className="icon"/>            
            <h3>React.js</h3>
            <small>3+ Years Working</small>
          </article>
          <article className="abilitie_card">
            <FaJava className="icon"/>
            <h3>Java</h3>
            <small>3+ Years Working</small>
          </article>
          <article className="abilitie_card">
            <FaVuejs className="icon"/>
            <h3>Vue.js</h3>
            <small>3+ Years Working</small>
          </article>
          <article className="abilitie_card">
            <FaPhp className="icon"/>
            <h3>Php</h3>
            <small>3+ Years Working</small>
          </article>
          <article className="abilitie_card">
            <FaPython className="icon"/>
            <h3>React.js</h3>
            <small>3+ Years Working</small>
          </article>                                
        </div>
        <div className="text">
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis magnam totam aliquam saepe consectetur, molestias ducimus veritatis reprehenderit, dolores, delectus nihil! Magnam animi, ratione iure numquam obcaecati inventore dolorem at dignissimos alias earum, voluptatibus maiores perferendis.</p>
            
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis magnam totam aliquam saepe consectetur, molestias ducimus veritatis reprehenderit, dolores, delectus nihil! Magnam animi, ratione iure numquam obcaecati inventore dolorem at dignissimos alias earum, voluptatibus maiores perferendis.</p>
          
          <a href="#contact" className='btn btn-primary'>Send Message</a>
        </div>
        
      </div>

    </section>
  );
};

export default Experience;
