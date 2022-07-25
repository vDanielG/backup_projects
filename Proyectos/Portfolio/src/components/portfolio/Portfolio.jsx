import React from 'react'
import './portfolio.css'
import IMG1 from '../../assets/photo.jpeg'

const data = [
  {
    id: 1,
    image: IMG1,
    title: 'YO',
    github: 'https://github.com',
    demo: 'https://youtube.com'
  },
  {
    id: 2,
    image: IMG1,
    title: 'YO',
    github: 'https://github.com',
    demo: 'https://youtube.com'
  },
  {
    id: 3,
    image: IMG1,
    title: 'YO',
    github: 'https://github.com',
    demo: 'https://youtube.com'
  },
  {
    id: 4,
    image: IMG1,
    title: 'YO',
    github: 'https://github.com',
    demo: 'https://youtube.com'
  },
  {
    id: 5,
    image: IMG1,
    title: 'YO',
    github: 'https://github.com',
    demo: 'https://youtube.com'
  },
  {
    id: 6,
    image: IMG1,
    title: 'YO',
    github: 'https://github.com',
    demo: 'https://youtube.com'
  },
]


const Portfolio = () => {
  return (
    <section id='portfolio'>
      <h5>Mis Proyectos Recientes</h5>
      <h2>Portfolio</h2>

      <div className="container portfolio_container">
        
        {
          data.map(({id, image, title, github, demo}) => {
            return(
              <article key={id} className="portfolio_item">
          <div className="portfolio_item-image">
            <img src={image} alt={title} />
          </div>
          <h3>{title}</h3>
          <div className="portfolio_item-cta">
            <a href={github} className='btn' target='_blank'>GitHub</a>
            <a href={demo} className='btn btn-primary' target='_blank'>Live Demo</a>          
          </div>
        </article>
            )
          })
        }

      </div>
    </section>
  )
}

export default Portfolio