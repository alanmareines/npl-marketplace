


const toggleTabs = (event) => {
  const tabs = document.querySelectorAll(".tab");
  const step = document.querySelectorAll(".step")

  tabs[0].classList.toggle("hidden");
  tabs[1].classList.toggle("hidden");
  step[0].classList.toggle("active");
  step[1].classList.toggle("active");
}

const addingFormEventListners = () => {
  const nextButton = document.querySelector('#step-btn'); 
  nextButton.addEventListener('click', toggleTabs);
  addEventSteps()
}

const addEventSteps = () => {
  const steps = document.querySelectorAll(".step")
  steps.forEach((step) => {
    step.addEventListener('click', (event) => {
    step.classList.length === 2 ? false : toggleTabs();
    });
  });
};

export { addingFormEventListners, addEventSteps };