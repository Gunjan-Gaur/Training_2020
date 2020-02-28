
document.addEventListener("DOMContentLoaded", function(event) {

    const password = document.querySelector('#password');
    const mixid = document.querySelector('#mixid');
    const p1 = document.querySelector('#p1');
    const p2 = document.querySelector('#p2');
    const p3 = document.querySelector('#p3');
    const p4 = document.querySelector('#p4');
    const confirm_pwd = document.querySelector('#confirm_pwd');

    //password validation
    password.addEventListener('focus',()=>{mixid.style.display = "block";});
    password.addEventListener('focusout',()=>{mixid.style.display = "none";});
    password.addEventListener('keyup',()=>{
      val = password.value
      val.match(/[A-Z]+/)? p1.style.display="none" :p1.style.display="block"
      val.match(/[a-z]+/)? p2.style.display="none" :p2.style.display="block"
      val.match(/[0-9]+/)? p3.style.display="none" :p3.style.display="block"
      val.match(/.{8}/)? p4.style.display="none" :p4.style.display="block"
    });
    // confirm_pwd.addEventListener('focus',()=>{p5.style.display="block";});
    // confirm_pwd.addEventListener('focusout',()=>{p5.style.display="none";});
    confirm_pwd.addEventListener('keyup',()=>{
      x = password.value
      password.value == confirm_pwd.value? p5.style.display="none":p5.style.display="block";
    });

  
});
