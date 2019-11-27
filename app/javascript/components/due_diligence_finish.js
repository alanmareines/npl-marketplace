const submitForm = () => {
  const form = document.querySelector('.edit_due_diligence');
  form.submit();
}

const finishDueDiligence = () => {
  const button = document.getElementById("due-diligence-finish");
  const input = document.getElementById('due_diligence_finished');
  if (button) {
    button.addEventListener('click', (event) => {
      event.preventDefault();
      input.value = true;
      input.checked = true;
      submitForm();
    })
  }
}

export { finishDueDiligence };