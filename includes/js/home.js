$(function(){
    var $slides = $('ul[data-orbit] li');
    $slides.each(function(){
        var $img = $(this).find('img');
        $img.css('visibility','hidden');
        $(this).css({
            'background-image' : 'url("'+$img.attr('src')+'")',
            'background-size': 'cover',
            'background-position': 'center'
        })
    });
});