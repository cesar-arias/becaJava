/**
 * 
 */

var total = 0;

$(document).ready(function(){
    $('.slider').slider('start');
  
	var year = (new Date).getFullYear();
    $('#footerdate').append('© '+year+' Copyright Text<a class="grey-text text-lighten-4 right" href="#!">More Links</a>');
  });

function commpra(name,pric,finish){
	total += pric;
	
	var obj = {names:name,price:pric,total:total,finish:finish};
	$.ajax({
        url : 'buyMovies.html',
        type:"GET",
        data:obj,
        success : function(data) {
        	Materialize.toast(data, 4000,'');
        }
    });
}

$(document).ready(function(){
    $('.slider').slider();
});

