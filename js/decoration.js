$('.con').on('mouseenter','.phone-box',function(){
    $(this).append(toolsBox);
    $(this).addClass('dashBorder');
});
$('.con').on('mouseleave','.phone-box',function(){
        $(this).removeClass('dashBorder');
        $('.change-css').remove();
});

//左侧内容区域点击，对应的右侧工具栏显示
//全局声明一个this，储存为当前点击的元素
var _this ;
$(".con").on("click",".phone-box",function(){
    //储存点击的元素
    var actTop = $(this).position().top + 'px';
    _this = $(this);
    // _this.index1 = $(this).index('.phone-box');
    $('.change-css').remove();
    //将点击自身的父级添加border
    $(".phone-box").removeClass('solidBorder');
    _this.addClass("solidBorder");
    //找到对应type值的工具栏
    var toolClass = '.' + _this.data('type');
    //关闭所有工具栏
    $('.tool-box').hide();
    //重置工具栏 ==> 具体请看resetToolTemplate.js
    resetToolBox(_this);
    //显示工具栏
    $(toolClass).css('top',actTop)
    $(toolClass).show();
});

// 点击添加元素按钮，展示对应的按钮组件
$('.phone-box').on("click",".add-top-btn",function(ev){
    ev.stopPropagation();
    // $('.phone-box').removeClass('dashBorder');
    // $('.phone-box').removeClass('solidBorder');
    // $(this).parent().parent('.phone-box').addClass('solidBorder');
    // $('.tool-box').hide();
    // $('.btn-tool-box').show();
    
});
$('.phone-box').on("click",".add-bot-btn",function(ev){
    ev.stopPropagation();
    $('.phone-box').removeClass('dashBorder');
    $('.phone-box').removeClass('solidBorder');
    $(this).parent().parent('.phone-box').addClass('solidBorder');
    $('.tool-box').hide();
    $('.btn-tool-box').show();
});

//左侧手机栏按钮组件点击事件
$('.phone-show').on('click','.btn-list',function () {
    var dataType = $(this).data('type');
    var toolClass = '.' + $(this).data('type');
    switch (dataType)
    {
        case '富文本':
            console.log('富文本');
        break;

        case '商品':
            console.log('商品');
        break;

        case '商品分组':
            console.log('商品分组');
        break;

        case 'banner-tool-box':
            console.log('图片广告');
        break;

        case '魔方':
            console.log('魔方');
        break;

        case '图文导航':
            console.log('图文导航');
        break;

        case 'text-tool-box':
            addTextBox()
        break;

        case '关联链接':
            console.log('关联链接');
        break;

        case '标题':
            console.log('标题');
        break;
    }
})

// 点击左侧按钮生成新的元素
function addTextBox(){
    $('.phone-box').removeClass('solidBorder');
    $('.con').append(textBox);
    var toolClass = '.' + $('.text-box').data('type');
    var actTop = $('.text-box:last').position().top + 'px';
    $(toolClass).css('top',actTop);
    _this = $('.text-box:last');
    $('.tool-box').hide();
    $(toolClass).show();
}

//关闭按钮
$('.tool-close').click(function(){
    $(this).parent().hide();
    $(".phone-box").removeClass('solidBorder');
})
