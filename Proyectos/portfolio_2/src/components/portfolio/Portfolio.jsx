import React from "react";
import "./portfolio.css";

const Portfolio = () => {
  return (
    <section id="portfolio">
      <div className="titulo">
        <h3>Recent projects</h3>
        <h2>My portfolio</h2>
      </div>
      <div className="container portfolio_container">
        <article className="project">
          <div className="img-project">
            <img src="" alt="image" />
          </div>
          <h2>Title Project</h2>
          <div className="btn-project">
            <a href="" className="btn" target="_blank">
              GitHub
            </a>
            <a href="" className="btn btn-primary" target="_blank">
              Live Demo
            </a>
          </div>
        </article>

        <article className="project">
          <div className="img-project">
            <img src="" alt="image" />
          </div>
          <h2>Title Project</h2>
          <div className="btn-project">
            <a href="" className="btn" target="_blank">
              GitHub
            </a>
            <a href="" className="btn btn-primary" target="_blank">
              Live Demo
            </a>
          </div>
        </article>

        <article className="project">
          <div className="img-project">
            <img src="" alt="image" />
          </div>
          <h2>Title Project</h2>
          <div className="btn-project">
            <a href="" className="btn" target="_blank">
              GitHub
            </a>
            <a href="" className="btn btn-primary" target="_blank">
              Live Demo
            </a>
          </div>
        </article>

        <article className="project">
          <div className="img-project">
            <img src="" alt="image" />
          </div>
          <h2>Title Project</h2>
          <div className="btn-project">
            <a href="" className="btn" target="_blank">
              GitHub
            </a>
            <a href="" className="btn btn-primary" target="_blank">
              Live Demo
            </a>
          </div>
        </article>

        <article className="project">
          <div className="img-project">
            <img src="" alt="image" />
          </div>
          <h2>Title Project</h2>
          <div className="btn-project">
            <a href="" className="btn" target="_blank">
              GitHub
            </a>
            <a href="" className="btn btn-primary" target="_blank">
              Live Demo
            </a>
          </div>
        </article>
      </div>
    </section>
  );
};

export default Portfolio;
