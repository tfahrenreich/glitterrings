$(function(){
    window.Glitterrings = {
        name : 'Glitterrings',
        version : '1.0',
        init : function(){
            this.windowResize.init();
            this.onScroll.init();
            //this.pageTransitions.init();
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
                var $target = $('section[data-resize]');
                if($target.length > 0){
                    var $windowHeight = Glitterrings.helpers.getHeight();
                    //console.log($windowHeight);
                    $target.css('min-height', $windowHeight+'px');
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
                //console.log('scroll');
            }
        },
        pageTransitions: {
            init : function(){
                var functions = $.map(Glitterrings.pageTransitions, function(value, index){
                    return value;
                });
                for (i = 1; i < functions.length; i++) {
                    functions[i]();
                }
            },
            onPageLoad:function(){
                $('body').queue(function(e){
                    $('body').css('opacity', '0');
                    setTimeout(function(){
                        $(e).dequeue();
                    },300);
                }).queue(function(){
                    $('body').addClass('transition').dequeue();
                }).queue(function(){
                    $('body').css('opacity', '1');
                })
            },
            linkTransition : function(){
                $('a').on('click',function(e){
                    if ($(this).attr('href') !== '#' && $(this).attr('target') == undefined){
                        var $link = $(this).attr('href');
                        e.preventDefault();
                        $('body').css('opacity', '0');
                        setTimeout(function(){
                            window.location = $link;
                        }, 300);
                    }
                });
            }
        }
    };
});

$(document).ready(function(){
    Glitterrings.init()
});
