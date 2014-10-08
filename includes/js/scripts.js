$(function(){
    window.Glitterrings = {
        name : 'Glitterrings',
        version : '1.0',
        init : function(){
            this.windowResize.init();
            this.onScroll.init();
        },
        helpers : {
            getWidth: function(){
                return Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
            },
            getHeight: function(){
                return Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
            }
        },
        windowResize: {
            init : function(){
                window.onresize =  function(){
                    var functions = $.map(Glitterrings.windowResize, function(value, index){
                        return value;
                    });
                    for (i = 1; i < functions.length; i++) {
                        functions[i]();
                    }
                };
                window.onresize();
            },
            minHeight : function(){
                /**Sets <sections>'s min-height to viewport height for full frame sections*/
                var $target = $('section');
                if($target.length > 0){
                    var $windowHeight = Glitterrings.helpers.getHeight();
                    //console.log($windowHeight);
                    $target.css('min-height', $windowHeight+'px');
                }
            },
            checkSlides : function(){
                if($('html.home ul[data-orbit]').length > 0){
                    var $img = $('ul[data-orbit] li img')
                    var $slide = $('ul[data-orbit] li')
                    if($img.width() >= Glitterrings.helpers.getWidth()){
                       $img.css('visibility', 'hidden');
                       $slide.css({
                           'background-image' : 'url("'+$img.attr('src')+'")',
                           'background-size': 'cover',
                           'background-position': 'center'
                       })
                    }else{
                        $img.css('visibility', '');
                        $slide.css({
                            'background-image' : '',
                            'background-size': '',
                            'background-position': ''
                        })
                    }
                }
            }
        },
        onScroll: {
            init : function(){
                $(window).scroll(function(){
                    var functions = $.map(Glitterrings.onScroll, function(value, index){
                        return value;
                    });
                    for (i = 1; i < functions.length; i++) {
                        functions[i]();
                    }
                });
                $(window).scroll();
            },
            scrollfunc : function(){
                $('section').each(function(){
                    var randomColor = Math.floor(Math.random()*16777215).toString(16);
                    $(this).css('background', "#"+randomColor);
                })
            }
        }
    };
});

$(document).ready(function(){
    Glitterrings.init()
});
