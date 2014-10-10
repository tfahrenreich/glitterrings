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
                console.log('scroll');
            }
        }
    };
});

$(document).ready(function(){
    Glitterrings.init()
});
