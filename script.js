let inputs = document.querySelectorAll('input:not([type="submit"])');
let submit = document.querySelector('input[type="submit"]');

submit.addEventListener('click', (e) => {
    e.preventDefault();
    if ([...inputs].filter(input => input.value === '' || input.value === null || input.value === 'undefined') != ''){
        alert('Būtina užpildyti visus laukus');
    } else {
        let alert = document.createElement('div');
        alert.innerHTML = template(inputs[1].value);
        submit.parentElement.prepend(alert);
        window.setTimeout(() => {
            alert.remove();
        }, 6000);
    }
})

function template(email){
    return `<p class='alert alert-info'>Prenumerata sėkmingai užsakyta el paštu ${email}</p>`;
}