// 更改标题名
$(".title-tool-box .write-title").bind('input propertychange',function () {
    _this.children().children('.main-title').text($(this).val());
});

// 更改副标题
$(".write-title-f").bind('input propertychange',function () {
    _this.children().children('.second-title').text($(this).val());
});

//显示位置按钮点击事件
$(".title-tool-box").on('click','.tal',function () {
    _this.css('text-align','left');
    _this.attr('f-align','0');
    $('.textAlign').removeClass('oActive');
    $(this).children(".o").addClass('oActive');
});
$(".title-tool-box").on('click','.tac', function () {
    _this.css('text-align','center');
    _this.attr('f-align','1');
    $('.textAlign').removeClass('oActive');
    $(this).children(".o").addClass('oActive');
});
$(".title-tool-box").on('click','.tar',function () {
    _this.css('text-align','right');
    _this.attr('f-align','2');
    $('.textAlign').removeClass('oActive');
    $(this).children(".o").addClass('oActive');
});

//背景颜色操作
//背景颜色,重置点击事件
$('.title-tool-box').on('click','.bg-color',function () {
    $(document).mousemove(function(){
        var bc ='#' + $('.title-tool-box .bg-color').val();
        console.log($('.title-tool-box .bg-color').val())
        _this.css('background-color' ,bc );
        _this.attr('f-bgc',bc);
        $(document).mouseup(function(){
            $(this).unbind('mousemove');
        })
    })
});
$('.title-tool-box').on('click','.bg-color-reset',function (){
    _this.css('background-color' ,'#fff' );
    _this.attr('f-bgc','#fff');
    $('.title-tool-box .bg-color').val('#fff');
    $('.title-tool-box .bg-color').css('background-color','#fff');
});

// 显示标题模板按钮点击事件
$(".title-tool-box").on('click','.normal',function () {
    $(".title-tool-box .kind-type").hide();
    $(".title-tool-box .kind").removeClass('oActive');
    $(this).children('.kind').addClass('oActive');
    $(".title-tool-box .kind-type").eq($(this).index()).show();
    _this.attr('mode-type','0');
    // 点击选择清空内容，获取新模板的内容
    // console.log(_this.children('.second-box').children('span').not('.second-title'))
    _this.children('.second-box').children('span').text('');
    _this.children().children('.second-title').text($('.write-title-f').val());
});
$(".title-tool-box").on('click','.wechat', function () {
    $(".title-tool-box .kind-type").hide();
    $(".title-tool-box .kind").removeClass('oActive');
    $(".title-tool-box .kind-type").eq($(this).index()).show();
    $(this).children('.kind').addClass('oActive');
    _this.attr('mode-type','1');
    // 点击选择清空内容，获取新模板的内容
    _this.children('.second-box').children('.second-title').text('');
    _this.children('.second-box').children('.second-date').text($('.write-title-d').val());
    _this.children('.second-box').children('.second-who').text($('.write-title-proud').val());
    _this.children('.second-box').children('.second-url').text($('.write-title-url').val());
});
// （传统）添加文本导航按钮事件
$(".title-tool-box").on('click','.add-wbdh',function(){
    $(this).hide();
    _this.attr('normal-nav','1');
    $(".title-tool-box .wbdh").show();
});
$(".title-tool-box").on('mouseenter','.wbdh',function(){
    $(this).children('.wbdh .delete-btn').show();
});
$(".title-tool-box").on('mouseleave','.wbdh',function(){
    $(this).children('.wbdh .delete-btn').hide();
});
$(".title-tool-box").on('click','.delete-btn',function(){
    $(this).parent('.wbdh').hide();
    $(".title-tool-box .add-wbdh").show();
    _this.attr('normal-nav','0');
});
// （传统）文本导航
$(".title-tool-box .write-title-n").bind('input propertychange',function () {
    _this.children().children('.second-nav').text($(this).val());
});

// (微信图文)日期
$(".title-tool-box").on('blur','.write-title-d',function () {
    var thisDate = $(this);
    setTimeout(function(){
        // console.log(thisDate.val());
        _this.children('.second-box').children('.second-date').text(thisDate.val());
    },200);
});
// (微信图文)作者
$(".write-title-proud").bind('input propertychange',function () {
    _this.children('.second-box').children('.second-who').text($(this).val());
});
// (微信图文)链接标题
$(".write-title-url").bind('input propertychange',function () {
    _this.children('.second-box').children('.second-url').text($(this).val());
});
