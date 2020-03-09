
document.addEventListener('DOMContentLoaded',()=>{

  window.addEventListener('scroll',()=>{
    console.log("1");
    let cval = 0
    let rowval = document.querySelectorAll('.rowval')
    cval = rowval.length
    // $.ajax({
    //   url: '/doctors',
    //   type: 'get',
    //   data: {
    //      count: cval
    //    },
    //    dataType: "script",
    // });
    $.ajax({
          url:  "/doctors",
          type: "get",
          data: {
            count: cval,
          },
          dataType: "script",
        });
  })
})
