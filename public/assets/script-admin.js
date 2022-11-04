$('#see-partner-list').click(function(){
  $('#ajax').html('<input type="text" class="form-control" id="search-user" value="" placeholder="Rechercher une franchise"//>');
  $.ajax ({
		type: "GET",
		url: 'views/partners-list.php',
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
		url: 'views/options-list.php',
		success: function( response ) {
      $('#ajax').html( response );
      return false;
    },
    });
  });

$('#see-gyms-list').click(function(){
  $.ajax ({
		type: "GET",
		url: 'views/gym-list.php',
		success: function( response ) {
      $('#ajax').html( response );
      return false;
    },
  });
});

  $('#add-new-partner').click(function(){
  $.ajax ({
		type: "GET",
		url: 'views/partners-add.php',
		success: function( response ) {
      $('#ajax').html( response );
      return false;
    },
    });
  });

  function confirmationEnable(anchor)
{
   var conf = confirm('Etes-vous sûr de vouloir activer cette franchise ?');
   if(conf)
   window.location=anchor.attr("href");
   alert('La franchise a bien été activée');
   document.location.reload();
}

  function confirmationDisable(anchor)
{
   var conf = confirm('Etes-vous sûr de vouloir désactiver cette franchise ?');
   if(conf)
   window.location=anchor.attr("href");
   alert('La franchise a bien été désactivée');
   document.location.reload();
}

  function confirmationDelete(anchor)
{
   var conf = confirm('Etes-vous sûr de vouloir supprimer ce partenaire et les salles qui lui sont associées ?');
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