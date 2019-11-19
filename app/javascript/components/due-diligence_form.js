const toggleCheckbox = (element) => {
  element.classList.toggle("active");
}

const toggleIcon = (element) => {
  element.classList.toggle("far");
  element.classList.toggle("fa-check-circle");
  element.classList.toggle("fas");
  element.classList.toggle("fa-times-circle");
}

const dueDiligenceCheck = () => {
  const checkboxes = document.querySelectorAll(".dd-boolean");
  checkboxes.forEach((checkbox) => {
    checkbox.addEventListener('click', () => { toggleCheckbox(checkbox) });
  });
  const icons = document.querySelectorAll(".check-icon");
  icons.forEach((icon) => {
    icon.addEventListener('click', () => { toggleIcon(icon) });
  })
}



export { dueDiligenceCheck };