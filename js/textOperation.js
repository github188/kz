//文本操作开始
//文本框对应的内容显示相同的文字
$(".text-tool-box .text-write").bind('input propertychange',function () {
    _this.children('.text-word').text($(this).val())
});

//字体大小按钮点击事件
$(".text-tool-box").on('click', '.fontSize18' , function () {
    _this.children('.text-word').css('font-size','18px');
    _this.children('.text-word').attr('f-weight','0');
    $('.fontSize').removeClass('oActive');
    $(this).children('.o').addClass('oActive');
});

$(".text-tool-box").on('click','.fontSize14',function () {
    _this.children('.text-word').css('font-size','14px');
    _this.children('.text-word').attr('f-weight','1');
    $('.fontSize').removeClass('oActive');
    $(this).children(".o").addClass('oActive');
});

$(".text-tool-box").on('click','.fontSize12',function () {
    _this.children('.text-word').css('font-size','12px')
    _this.children('.text-word').attr('f-weight','2');
    $('.fontSize').removeClass('oActive');
    $(this).children(".o").addClass('oActive');
})
//显示位置按钮点击事件
$(".text-tool-box").on('click','.tal',function () {
    _this.children('.text-word').css('text-align','left')
    _this.children('.text-word').attr('f-align','0');
    $('.textAlign').removeClass('oActive');
    $(this).children(".o").addClass('oActive');
})
$(".text-tool-box").on('click','.tac', function () {
    _this.children('.text-word').css('text-align','center')
    _this.children('.text-word').attr('f-align','1');
    $('.textAlign').removeClass('oActive');
    $(this).children(".o").addClass('oActive');
})
$(".text-tool-box").on('click','.tar',function () {
    _this.children('.text-word').css('text-align','right')
    _this.children('.text-word').attr('f-align','2');
    $('.textAlign').removeClass('oActive');
    $(this).children(".o").addClass('oActive');
})

//文本颜色,重置点击事件
$('.text-tool-box').on('click', '.text-color' , function () {
    $(document).mousemove(function(e){
        var tc ='#' + $('.text-tool-box .text-color').val();
        console.log(tc)
        _this.children('.text-word').css('color' ,tc )
        _this.children('.text-word').attr('f-color' ,tc )
        $(document).mouseup(function(){
            $(this).unbind('mousemove');
        })
    })
});
$('.text-tool-box').on('click','.text-color-reset',function (){
    _this.children('.text-word').css('color' ,'#000' )
    _this.children('.text-word').attr('f-color','#000');
    $('.text-tool-box .text-color').val('#000');
    $('.text-tool-box .text-color').css('background-color','#000');
})


//背景颜色,重置点击事件
$('.text-tool-box').on('click','.bg-color',function () {
    $(document).mousemove(function(){
        var bc ='#' + $('.text-tool-box .bg-color').val();
        _this.children('.text-word').css('background-color' ,bc );
        _this.children('.text-word').attr('f-bgc',bc);
        $(document).mouseup(function(){
            $(this).unbind('mousemove');
        })
    })
});
$('.text-tool-box').on('click','.bg-color-reset',function (){
    _this.children('.text-word').css('background-color' ,'#fff' )
    _this.children('.text-word').attr('f-bgc','#fff');
    $('.text-tool-box .bg-color').val('#fff');
    $('.text-tool-box .bg-color').css('background-color','#fff');
})

