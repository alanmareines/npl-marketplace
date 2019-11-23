const preRenderform = () => {
  const formInputs = document.querySelectorAll('.form-check-input');
  if (formInputs) {
    formInputs.forEach((input) => {
      if (input.checked) {
        input.labels[0].classList.add('active');
      };
    });
  };
}

export { preRenderform };