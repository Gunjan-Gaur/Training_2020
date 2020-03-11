
document.addEventListener('DOMContentLoaded',() =>{

  window.addEventListener('scroll',() =>{
    console.log("INSIDE");
    let cval = 0
    let rowval = document.querySelectorAll('.row-val')
    cval = rowval.length
    console.log(cval);
    $.ajax({
          url:  "doctors/paginate",
          type: "get",
          data: {
            count: cval
          },
          dataType: "script",
        });
  })
})
