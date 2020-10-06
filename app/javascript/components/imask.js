import IMask from 'imask';

const iMask = () => {
  let cpf = document.getElementById("user_cpf");
  if (cpf !== null) {
    let maskOptions = {
      mask: "000.000.000-00"
    };
    let mask = IMask(cpf, maskOptions);
  }
}
export {iMask}
