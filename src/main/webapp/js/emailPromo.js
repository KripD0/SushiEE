function checkEmail(textField) {
    let mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (!textField.value.match(mailformat)) //Матч - совпадает с форматом
    {
        setTimeout(() => window.location.reload(), 500);
        alert("Введённый e-mail не валиден!");
    }
}

function checkEmailWithPromo(textField) {
    let mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    let promocode = (Math.random()).toString(16);
    promocode = promocode.replace("0.", " ");
    promocode = promocode.toUpperCase();
    if (textField.value.match(mailformat)) //Матч - совпадает с форматом
    {
        alert("Ваш промокод: " + promocode);
    } else {
        alert("Введённый e-mail не валиден!");
    }
}
