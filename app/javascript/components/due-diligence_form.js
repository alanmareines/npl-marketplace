const dueDiligenceCheck = () => {
  const labels = document.querySelectorAll(".form-check-label");

  labels.forEach((label) => {
    label.addEventListener('click', () => {
      label.classList.toggle("active");
    });
  });
}



export { dueDiligenceCheck };