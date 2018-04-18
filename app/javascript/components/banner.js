import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  document.getElementById('sweet-alert-demo').addEventListener('click', () => {
    swal("Quanto você deseja investir?", {
      content: "input",
    })
  });
}

export { bindSweetAlertButtonDemo };
