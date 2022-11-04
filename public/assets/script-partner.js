$('#see-gym-list').click(function(){
    $('#ajax').html('<input type="text" class="form-control" id="search-user" value="" placeholder="Rechercher une franchise"//>');
    $.ajax ({
          type: "GET",
          url: 'views/gyms-list.php',
          success: function( response ) {
      $('#ajax').append( response );
      return false;
      },
    });
    $(document).ready(function() {
      $("#search-user").on("keyup", function() {
      var value = $(this).val().toLowerCase();
          $("#body-table tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
          });
      }); 
    });
  });
  
  
  $('#see-perms-list').click(function(){
    $.ajax ({
          type: "GET",
          url: '../partner/query/partner-options-list.php',
          success: function( response ) {
        $('#ajax').html( response );
        return false;
      },
      });
    });
  
    $('#add-new-gym').click(function(){
    $.ajax ({
          type: "GET",
          url: 'views/gym-add.php',
          success: function( response ) {
        $('#ajax').html( response );
        return false;
      },
      });
    });
  
    function confirmationEnable(anchor)
  {
     var conf = confirm('Etes-vous sûr de vouloir activer cette salle ?');
     if(conf)
     window.location=anchor.attr("href");
     alert('La franchise a bien été activée');
     document.location.reload();
  }
  
    function confirmationDisable(anchor)
  {
     var conf = confirm('Etes-vous sûr de vouloir désactiver cette salle ?');
     if(conf)
     window.location=anchor.attr("href");
     alert('La franchise a bien été désactivée');
     document.location.reload();
  }
  
    function confirmationDelete(anchor)
  {
     var conf = confirm('Etes-vous sûr de vouloir supprimer cette salle ?');
     if(conf)
        window.location=anchor.attr("href");
  }
  
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