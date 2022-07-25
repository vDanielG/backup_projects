import React from 'react'
import {BsLinkedin} from 'react-icons/bs'
import {BsFacebook} from 'react-icons/bs'
import {BsYoutube} from 'react-icons/bs'

const HeaderSocials = () => {
  return (
    <div className='header_socials'>
        <a href="https://linkedin.com" target="_blank"><BsLinkedin/></a>
        <a href="https://facebook.com" target="_blank"><BsFacebook/></a>
        <a href="https://youtube.com" target="_blank"><BsYoutube/></a>
    </div>
  )
}

export default HeaderSocials