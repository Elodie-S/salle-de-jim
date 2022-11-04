$('#see-gym-info').click(function(){
    $.ajax ({
          type: "GET",
          url: '../gym/views/gym-info.php',
          success: function( response ) {
        $('#ajax').html( response );
        return false;
      },
      });
    });
  
  $('#see-perms-list').click(function(){
    $.ajax ({
          type: "GET",
          url: '../gym/query/gym-options-list.php',
          success: function( response ) {
        $('#ajax').html( response );
        return false;
      },
      });
    });
  
    /* Menu glissant sur le côté */
  
  function slideMenu () {
  
  const burger = document.querySelector('.burger');
  const menu  = document.querySelector('.menu-container');
  
  burger.addEventListener('click', () => {
  menu.classList.toggle('nav-active');
  });
  }
  
  slideMenu();
  
  function offMenu () {
  
  const menu  = document.querySelector('.menu-container');
  
  menu.addEventListener('click', () => {
  menu.classList.toggle('nav-active');
  });
  }
  
  offMenu();