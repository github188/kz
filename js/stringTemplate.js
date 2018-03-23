//初始化，为手机栏内容区域每一个子元素添加工具
var toolsBox =`
    <div class="change-css" isClick=false>
        <p class="edit">点击编辑</p>
        <i class="delete-btn">×</i>
        <i class="add-top-btn"
            data-type = 'btn-tool-box'
        >＋</i>
        <i class="add-bot-btn"
            data-type = 'btn-tool-box'
        >＋</i>
    </div>`

var bannerBox = `
<div class="banner-box phone-box"
    data-type="banner-tool-box"></div>
`  
var textBox = `
<div class="text-box phone-box solidBorder"
data-type="text-tool-box"
><p class="text-word"
   f-weight = '0'
   f-color = '#000'
   f-bgc = '#fff'
   f-align = '0'></p>
</div>
`


var swiper = `
    <div class="swiper-container clear">
        <div class="swiper-wrapper clear">
            <div class="swiper-slide rel clear red">
                <img src="" alt="">
                <p class="info-text">单页标题1</p>
            </div>
            <div class="swiper-slide rel clear blue">
                <img src="" alt="">
                <p class="info-text">单页标题2</p>
            </div>
            <div class="swiper-slide rel clear yellow">
                <img src="" alt="">
                <p class="info-text">单页标题3</p>
            </div>
        </div>
        <div class="swiper-pagination lbt-btn"></div>
        
    </div>
`

//点击给div添加banner效果
var box = `
    <div class="bannerShow">
        <ul class="more-width-box">
            <li class="banner-img">
                <div class="bannerImgBox red">
                    <img src="" alt="">
                </div>
                <div class="info banner-info">
                    <p class="info-text">单页标题1</p>
                </div>
            </li>
            <li class="banner-img">
                <div class="bannerImgBox blue">
                    <img src="" alt="">
                </div><div class="info banner-info">
                    <p class="info-text">单页标题2</p>
                </div>
            </li>
            <li class="banner-img">
                <div class="bannerImgBox yellow">
                    <img src="" alt="">
                </div>
                <div class="info banner-info">
                    <p class="info-text">单页标题3</p>
                </div>
            </li>
        </ul>
        <div class="nav-btn">
            <span>●</span>
            <span>●</span>
            <span>●</span>
        </div>
    </div>
`

//自动播放
// setInterval(roll,3000);
// var index = 0;
// function roll(){
//     $(".more-width-box").animate({marginLeft:"-318px"},500,"linear",function(){
//         index++;
//         if(index>2){
//             index=0;
//             $('.nav-btn span').eq(index).css('color', '#ff6600')
//         }
//         $('.nav-btn span').css('color', '#999999')
//         $('.nav-btn span').eq(index).css('color', '#ff6600')
//         $(this).css({marginLeft:"0px"});
//         $(this).children("li").first().remove().clone(true).appendTo(".more-width-box");
//     });
// }