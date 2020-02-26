function myfun()
{
    var valid;
    const firstname = document.querySelector('#firstname');
    const fname = document.querySelector('#fname');
    const email = document.querySelector('#email');
    const mail = document.querySelector('#mail');
    const pwd = document.querySelector('#pwd');
    const pass = document.querySelector('#pass');
    //Validation for firstname
    fname.addEventListener('focus',() =>{firstname.style.display = "block";});
    fname.addEventListener('focusout',() => {firstname.style.display = "none";});
    fname.addEventListener('keyup',()=>{
      f = fname.value
      f.match(/^[a-zA-Z]+$/)? firstname.style.display="none" : firstname.style.display="block";
    });

    //Validation for email
    email.addEventListener('keyup',()=>{
      m = mail.value
      m.match(/^[a-zA-Z0-9.]+@[a-zA-Z]+\.[a-zA-Z.]+$/)? mail.style.display="none" : mail.style.display="block";});

}
