
const toggleIcon = (element) => {
  element.classList.toggle("far");
  element.classList.toggle("fa-check-circle");
  element.classList.toggle("fas");
  element.classList.toggle("fa-times-circle");
}

const dueDiligenceCheck = () => {
  const labels = document.querySelectorAll(".form-check-label");

  labels.forEach((label) => {
    label.addEventListener('click', () => {
      label.classList.toggle("active");
    });
  });
}



export { dueDiligenceCheck };