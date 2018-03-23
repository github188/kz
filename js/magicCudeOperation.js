$('.magic-cube-tool-box').on('click' ,'.magic-change',function () {
    //为点击的元素添加border
    $('.magic-change').removeClass("solidBorder");
    $(this).addClass('solidBorder');
    //显示对应的布局板块
    $('.template-build .build-type').hide();
    $('.template-build .build-type').eq($(this).index()).show();
})
//布局板块内容点击事件
$('.build-type .build-pic-show').on('click','.build-pic-template',function(){
    $('.build-pic-template').removeClass('solidBorder');
    $('.build-pic-template').addClass('bpt-border');
    $('.build-pic-template').css('z-index',0);
    $(this).removeClass('bpt-border');
    $(this).addClass('solidBorder');
    $(this).css('z-index',2)
})

// 图片间隙拉杆事件
$('.template-build').on('mouseenter' ,'.y',function(e){
    $(this).children('.y-n').show();
    $(this).css({
        'width':'12px',
        'height':'12px',
        'border-color':'#3388ff'
    })
})
$('.template-build').on('mouseout' ,'.y',function(e){
    if($(this).attr('be-catch') == 'false'){
        $(this).children('.y-n').hide();
        $(this).css({
            'width':'10px',
            'height':'10px',
            'border-color':'#bbddff'
        })
    }
})


$('.template-build').on('mousedown' ,'.y',function(e){
    //阻止默认事件
    e.preventDefault();
    
    $(this).attr('be-catch',true);
    var that = $(this);
    // 获取元素的left值
    var positionDivX = $(this).offset().left;
    //获取元素的起始left 值
    var distenceX = $(this).position().left;
    // 获取鼠标坐标
    $(this).css({
        'width':'12px',
        'height':'12px',
        'border-color':'#3388ff'
    })
    var ex = e.pageX;

    console.log($('.g').width())
    $(document).mousemove(function(e){
        var x =e.pageX - ex + distenceX;
        if(x<0){
            x=0;
        }else if(x>$('.g').width()){
            x = $('.g').width();
        }
        $('.g-c').width(x+'px');
        that.css('left', x+'px');
        var icoNum = Math.floor( x / 8);
        that.children('.y-n').text(icoNum);
    });
    $(document).mouseup(function(){
        that.attr('be-catch',false);
        that.css({
            'width':'10px',
            'height':'10px',
            'border-color':'#bbddff'
        })
        $(document).off('mousemove');
    });
})