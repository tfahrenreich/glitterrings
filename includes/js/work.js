$(function(){
    $('dl.tabs dd').on('click',function(){
        var $img = {
            "Metal"   : "/includes/img/work/100814_Glitterrings-035-Edit.jpg",
            "Pave"    : "/includes/img/work/100814_Glitterrings-146-Edit.jpg",
            "Enamel"  : "/includes/img/work/100814_Glitterrings-321-Edit.jpg",
            "Texture" : "/includes/img/work/100814_Glitterrings-561-Edit.jpg"
        };
        var $jumbotron = $('div.jumbotron');
        var $tab = $(this);
        var $selection = $img[$tab.find('a').html()];

        if($selection !== $jumbotron.data('background')){
            $jumbotron
                .css({'background-position':'center -1300px'})
                .data('background',$selection);

            setTimeout(function(){
                $jumbotron.css({
                        'background-position' : '',
                        'background-image'    : "url('"+$selection+"')"
                    }
                )
            }, 300);
        }
    })
});