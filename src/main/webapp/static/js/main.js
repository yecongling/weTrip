


//下拉列表
$('#dropdown01').mouseover(function () {
    $('#dropdown-menu01').css('display','block');
});
$('#dropdown01').mouseout(function () {
    $('#dropdown-menu01').css('display','none');
});

$('#dropdown02').mouseover(function () {
    $('#dropdown-menu02').css('display','block');
});
$('#dropdown02').mouseout(function () {
    $('#dropdown-menu02').css('display','none');
});





//sidebar
(function () {
    var scTop = 0,
        beginH = 138,
        wW = $(window).width(),
        classN,
        num;
    $(window).scroll(function () {
        scTop = $(window).scrollTop();
        beginH = 138;
        switch (scTop) {
            case 600:
                beginH -= 45;
                break;
            case 500:
                beginH -= 50;
                break;
            case 400:
                beginH -= 55;
                break;
            case 300:
                beginH -= 60;
                break;
            case 200:
                beginH -= 65;
                break;
            default :
                beginH = 138;
                break;
        }
    });
    $('.side-li > li').hover(function () {
        $(this).find('h3').css({border: 'none'})
            .end().find('span').css({color: "#e8ffca"});
        classN = $(this).attr('class');
        num = classN.substring(2, classN.length);

        switch (scTop) {
            case 0:
                if (num > 14) {
                    beginH += 120
                } else if (num >= 12) {
                    beginH += 41
                }
                ;
                break;
            case 100:
                if (num == 1) {
                    beginH -= 27
                } else if (num == 16) {
                    beginH += 7
                }
                ;
                break;
            case 200:
                num < 5 ? beginH -= 60 : beginH -= 30;
                break;
            case 300:
                num < 8 ? beginH -= 60 : beginH -= 40;
                break;
            case 400:
                num <= 11 ? beginH -= 50 : beginH += 10;
                break;
            case 500:
                num < 14 ? beginH -= 50 : '';
                break;
            case 600:
                num <= 16 ? beginH -= 50 : '';
                break;
            default :
                beginH = 138;
                break;
        }

        $('.hiden-box').show()
            .css({
                left: ((wW - 1190) / 2 + 149),
                top: beginH
            }).animate({width: '300px'}, 30);
        $('.hiden-box > li').hide();
        $('#hiden-' + num).fadeIn(200);
        beginH = 138;
    }, function () {
        $(this).find('h3').css({border: ''})
            .end().find('span').css({color: ""});
        $('.hiden-box').hide().css({width: '0'});
    });
    $('.hiden-box').hover(function () {
        $('.s_' + num).css({
            border: '1px solid #f40',
            borderRight: '1px solid #fff'
        }).find('h3').css({border: 'none'})
            .end().find('span').css({color: "#e8ffca"});
        $(this).show().css({width: '729px'});
    }, function () {
        $('.s_' + num).css({
            border: '',
            borderRight: ''
        }).find('h3').css({border: ''})
            .end().find('span').css({color: ""});
        $(this).animate({
            width: 0
        }, 200).hide(200);
    });

})();





// 信息平铺   1
$('.eee1').mouseover(function () {
    $(this).css('border','2px solid #ff7b0b');
});
$('.eee1').mouseout(function () {
    $(this).css('border','none');
});
//   2
$('.eee2').mouseover(function () {
    $(this).css('border','2px solid #9c2fff');
});
$('.eee2').mouseout(function () {
    $(this).css('border','none');
});
//   3
$('.eee3').mouseover(function () {
    $(this).css('border','2px solid #0dff72');
});
$('.eee3').mouseout(function () {
    $(this).css('border','none');
});
//   4
$('.eee4').mouseover(function () {
    $(this).css('border','2px solid #ff4c7a');
});
$('.eee4').mouseout(function () {
    $(this).css('border','none');
});
//   5
$('.eee5').mouseover(function () {
    $(this).css('border','2px solid #29a80e');
});
$('.eee5').mouseout(function () {
    $(this).css('border','none');
});













