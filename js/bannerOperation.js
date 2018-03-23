//自动播放
// function ff(that){
//     that.index = 0;
//     setInterval(function(){
//         roll(that);
//     },3000);
// }

// function roll(timer1){
//     console.log(timer1.index1)
//     timer1.find('.more-width-box').animate({marginLeft:"-318px"},500,"linear",function(){
//         timer1.index++;
//         timer1.index %=3;
//         // if(timer1.index>2){
//         //     timer1.index=0;
//         //     $('.nav-btn span').eq(timer1.index).css('color', '#ff6600')
//         // }
//         timer1.find('.nav-btn span').css('color', '#999999')
//         timer1.find('.nav-btn span').eq(timer1.index).css('color', '#ff6600')
//         // $(this).css({marginLeft:"0px"});
//         // timer1.children("li").first().remove().clone(true).appendTo(timer1);
//     });
// }
// function zoumadeng(that){
//     that.append(box);
//     ff(that);
//     // setInterval(function(){
//     //     roll(that);
//     // },3000);
    
// }

//点击
$('.banner-tool-box').on('click','.banner-change',function(){
    //为点击的元素添加border
    $('.banner-change').removeClass("solidBorder");
    $(this).addClass('solidBorder');
    //显示对应的布局板块
    $('.change-template-box .change-template').hide();
    $('.change-template-box .change-template').eq($(this).index()).show();

})

