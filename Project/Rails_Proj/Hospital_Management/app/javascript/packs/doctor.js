
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

    //Validate firstname
    const firstname = document.querySelector('#firstname');
    const fname = document.querySelector('#fname');
    //fname.addEventListener('focus',()=>{firstname.style.display = "block";});
    //fname.addEventListener('focusout',()=>{firstname.style.display = "none";});
    fname.addEventListener('keyup',()=>{
      v = fname.value
      v.match(/^[a-zA-Z]+$/) && !v == " "? firstname.style.display="none":firstname.style.display="block"});

    //Validate lastname
    const lastname = document.querySelector('#lastname');
    const lname = document.querySelector('#lname');
    //lname.addEventListener('focus',()=>{firstname.style.display = "block";});
    //lname.addEventListener('focusout',()=>{firstname.style.display = "none";});
    lname.addEventListener('keyup',()=>{
      v = lname.value
      v.match(/^[a-zA-Z]+$/)? lastname.style.display="none":lastname.style.display="block"});


      //validate email
      const email = document.querySelector('#email');
      const mail = document.querySelector('#mail');
      // email.addEventListener('focus',()=>{mail.style.display='block';})
      // email.addEventListener('focusout',()=>{mail.style.display='none';})
      email.addEventListener('keyup',()=>{
      v = email.value
      v.match(/^[a-zA-Z0-9.]+@[a-zA-Z]+\.[a-zA-Z.]{3}$/)? mail.style.display='none':mail.style.display='block';
      });

      //validate phone Number
      const mobile = document.querySelector('#mobile');
      const phone = document.querySelector('#phone');
      // mobile.addEventListener('focus',()=>{phone.style.display='block';})
      // mobile.addEventListener('focusout',()=>{phone.style.display='none';})
      mobile.addEventListener('keyup',()=>{
        v = mobile.value
        isNaN(v)? phone.style.display='block':phone.style.display='none'
      });


});
