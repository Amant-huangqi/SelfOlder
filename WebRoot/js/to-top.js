/**
 * Created by yanni on 15-1-27.
 */
//the 'to-top button' will show or disappear according to the distance to the window top of scroll bar
$(".to-top").hide();
$(function(){
    window.onscroll=function(){
        if(document.body.scrollTop>0 || document.documentElement.scrollTop>0){
            $(".to-top").show();
            $(".to-top").hover(
                
            );
        }
        else{
            $(".to-top").hide()
        }
    }
})
$(".erweima").hide();
$(".show-code").hover(
   
)

