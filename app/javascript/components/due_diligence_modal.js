const submitForm = () => {
  const form = document.getElementById('new_npl');
  form.submit();
}

const checkDuediligence = () => {
  const button = document.getElementById("due-diligence-btn");
  const input = document.getElementById('npl_due_diligence');
  if (button) {
    button.addEventListener('click', (event) => {
      event.preventDefault();
      input.value = true;
      input.checked = true;
      submitForm();
    })
  }
}

export { checkDuediligence };