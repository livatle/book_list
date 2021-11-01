$(document).on('turbolinks:load', function() {
  var path = location.pathname;
  var lists = $("ul.nav-list li");
  lists.each(function(){
	  var link = $(this).find('a').attr('href');
	  if(path.indexOf(link) > -1){
		  $(this).addClass("current");
    }
  })
})
