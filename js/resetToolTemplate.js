function resetToolBox(obj) {
    var dataType = obj.data('type');
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

        case 'magic-cube-tool-box':
            console.log('魔方');
        break;

        case '图文导航':
            console.log('图文导航');
        break;

        case 'text-tool-box':
            resetText(obj);
        break;

        case '关联链接':
            console.log('关联链接');
        break;

        case 'title-box':
            console.log('标题');
        break;
    }
}

//文本重置开始
function resetText(obj) {
    var that = obj.children('.text-word');
    $('.change-css').remove();
    //判断内容
    $('.text-tool-box .text-write').val(that.text())
    $('.text-tool-box .fontSize ,.text-tool-box .textAlign').removeClass('oActive');
    // 判断字体大小
    if(that.attr('f-weight') == 1){
        $('.fontSize').eq(1).addClass('oActive');
        that.css('font-size','14px');
    }else if(that.attr('f-weight') == 2){
        $('.fontSize').eq(2).addClass('oActive');
        that.css('font-size','12px');
    }else{
        $('.fontSize').eq(0).addClass('oActive');
        that.css('font-size','18px');
    }
    // 判断文本颜色
    if(that.attr('f-color') != '#000'){
        that.css('color',that.attr('f-color'));
        $('.text-tool-box .text-color').val(that.css('color'))
        $('.text-tool-box .text-color').css('background-color' , that.css('color'))
    }else{
        that.css('color','#000');
        $('.text-tool-box .text-color').val('#000')
        $('.text-tool-box .text-color').css('background-color' , '#000')
    }
    // 判断背景颜色
    if(that.attr('f-bgc') != '#fff'){
        that.css('background-color',that.attr('f-bgc'));
        $('.text-tool-box .bg-color').val(that.css('background-color'))
        $('.text-tool-box .bg-color').css('background' , that.css('background-color'))
    }else{
        that.css('background-color','#fff');
        $('.text-tool-box .bg-color').val('#fff')
        $('.text-tool-box .bg-color').css('background' ,'#fff') 
    }
    // 判断显示位置
    if(that.attr('f-align') == 1){
        $('.text-tool-box .textAlign').eq(1).addClass('oActive');
        that.css('text-align','center');
    }else if(that.attr('f-align') == 2){
        $('.text-tool-box .textAlign').eq(2).addClass('oActive');
        that.css('text-align','right');
    }else{
        $('.text-tool-box .textAlign').eq(0).addClass('oActive');
        that.css('text-align','left');
    }
}
//文本重置结束