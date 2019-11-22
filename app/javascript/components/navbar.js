const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const banner = document.querySelector('.banner');
  const navLinks = document.querySelectorAll('.nav-link');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= banner.offsetHeight) {
        navbar.classList.add('navbar-lewagon-white');
        navLinks.forEach((link) => {
          link.classList.remove('text-white');
        });
      } else {
        navbar.classList.remove('navbar-lewagon-white');
        navLinks.forEach((link) => {
          link.classList.add('text-white');
        });
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
