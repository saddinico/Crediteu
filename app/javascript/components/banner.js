import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {

  document.getElementById('sweet-alert-demo').addEventListener('click', () => {
    swal({
      title: "Obrigado!",
      text: "Obrigado por se inscrever na nossa lista!",
      icon: "success"
    })
  });
}

export { bindSweetAlertButtonDemo };
