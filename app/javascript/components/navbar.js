const initUpdateNavbarOnScroll = () => {
  const logo = document.querySelector('.navbar-brand');
  const navbar = document.querySelector('.navbar');
  if (document.querySelector('.home')) {
    navbar.classList.remove('sticky-top');
    navbar.classList.add('fixed-top');
    window.addEventListener('scroll', (e) => {
      if (window.scrollY >= (window.innerHeight * 0.75)) {
        navbar.classList.add('navbar-transform');
        logo.classList.add('navbar-brand-transform');
      } else {
        navbar.classList.remove('navbar-transform');
        logo.classList.remove('navbar-brand-transform');
      }
    });
  } else {
  navbar.classList.add('navbar-transform');
  logo.classList.add('navbar-brand-transform');
  };
};

export { initUpdateNavbarOnScroll }