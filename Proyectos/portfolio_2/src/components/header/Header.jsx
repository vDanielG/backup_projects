import React from "react";
import "./header.css";
import ME from "../../assets/photo.jpeg";

const Header = () => {
  return (
    <header>
      <div className="container header_container">
        <div className="me">
          <div className="titulo">
            <h2>Hola, mi nombre es</h2>
            <h1>Alan Daniel Gaona Villa</h1>
            <h3>Fullstack & Cibersecurity</h3>
          </div>
          <img src={ME} alt="Me" />
        </div>
      </div>
    </header>
  );
};

export default Header;
