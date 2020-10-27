// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import "@fortawesome/fontawesome-free/js/all";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

// Carousel logic

const setCarousel = (jobList) => {
  // add a class to 1st element in the array of carousel
  let track = document.querySelector(`#${jobList} .custom-carousel-track`);
  let slides = Array.from(track.children);
  let prevButton = document.querySelector(`#${jobList} .custom-controls`).children[0];
  let nextButton = document.querySelector(`#${jobList} .custom-controls`).children[1];
  let slideSize = (slides[0].getBoundingClientRect().width + 24);
  slides[0].className += " current";

  // align all the elements of the array in a linear fashion
  let setSlidePosition = (slide, index) => {
    slides[index].style.left = slideSize * index + "px"
  }

  slides.forEach(setSlidePosition)

  const moveToSlide = (track, currentSlide, targetSlide) => {
    // move to next offer
    track.style.transform = 'translateX(-' + targetSlide.style.left + ')';
    currentSlide.className = "custom-carousel-slide"
    targetSlide.className += " current";
  }

  prevButton.addEventListener('click', e => {
    let currentSlide = track.querySelector('.current');
    let prevSlide = currentSlide.previousElementSibling;

    moveToSlide(track, currentSlide, prevSlide);
  })

  nextButton.addEventListener('click', e => {
    let currentSlide = track.querySelector('.current');
    let nextSlide = currentSlide.nextElementSibling;

    moveToSlide(track, currentSlide, nextSlide);
    // Make sure that it cant get off limits
  })
}

setCarousel('remote-scanner');
setCarousel('clarify');
