$(function(){

	var Timerr;
		function aa(){
			for(var i=0;i<4;i++){
			var m=parseInt(Math.random()*700+100);
			var j2=parseInt(Math.random()*300+1200);
			var j=parseInt(Math.random()*1600+000);
			var j1=parseInt(Math.random()*300+300);
			var n=parseInt(Math.random()*10+(-10));
			$('.div').prepend('<div><div><div><div><div></div></div></div></div></div>')
			$('.div').children('div').eq(0).css({'left':j,'top':n})
			$('.div').children('div').eq(0).animate({'left':j-j1,'top':$(window).height()+20},j2)
			
			}
			}
			aa();
			setInterval(function(){
				aa();
				},300)
				setInterval(function(){
					for(var jj=0;jj<$('.div>div').size()/4;jj++){
					$('.div>div').eq($('.div>div').size()-jj).remove();
					}
					
					},1000)
		
	})