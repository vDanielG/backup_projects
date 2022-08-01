import React from "react"
import './about.css'
import ME from '../../assets/photo.jpeg'

const About = () => {
  return (
    <section id="about">
      <div className="titulo">
        <h3>About me</h3>
        <h2>My history</h2>
      </div>
      <div className="container info_container">          
        <img src={ME} alt="" />
        <div className="info">
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore, omnis quod rem beatae ex provident dolore numquam necessitatibus hic minus cupiditate veniam quo quasi, aspernatur ullam unde maiores illum labore, culpa nisi quia blanditiis.Nisi.</p>
        </div>
      </div>

      <div className="container about_container">

      </div>

    </section>

  )
}

export default About;
