import React from 'react'
import './testimonials.css'
import ME from '../../assets/photo.jpeg'
import {Pagination} from 'swiper';
import {Swiper, SwiperSlide} from 'swiper/react';

import 'swiper/css';
import 'swiper/css/pagination';

const data = [
  {
    avatar: ME,
    name: 'Hector Javier Vergara Hernandez',
    review: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum quos eos nesciunt autem, labore animi ad, cumque officiis enim, fugit placeat repellat? Facere eveniet tenetur repellendus expedita ab aliquid officiis.'
  },
  {
    avatar: ME,
    name: 'Hector Javier Vergara Hernandez',
    review: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum quos eos nesciunt autem, labore animi ad, cumque officiis enim, fugit placeat repellat? Facere eveniet tenetur repellendus expedita ab aliquid officiis.'
  },
  {
    avatar: ME,
    name: 'Hector Javier Vergara Hernandez',
    review: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum quos eos nesciunt autem, labore animi ad, cumque officiis enim, fugit placeat repellat? Facere eveniet tenetur repellendus expedita ab aliquid officiis.'
  }
]

const Testimonials = () => {
  return (
    <section id='testimonials'>
      <h5>Opinion de clientes</h5>
      <h2>Testimonios</h2>

      <Swiper className="container testimonials_container" 
        //Install Swiper Modules
              modules = {[Pagination]}
              spaceBetween = {40}
              slidesPerView = {1}
              pagination = {{ clickable: true }}>
        
        {
          data.map(({avatar, name, review}, index) => {
            return (
              <SwiperSlide key={index} className="testimonial">
                <div className="client_avatar">
                  <img src={avatar} alt="Avatar One" />
                </div>
                <h5 className='client_name'>{name}</h5>
                <small className="client_review">
                {review}
                </small>
            </SwiperSlide>
            )
          })
        }
        
      </Swiper>
    </section>
  )
}

export default Testimonials