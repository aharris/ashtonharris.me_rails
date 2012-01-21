$().ready(function() {
setResponsiveStyles();
$(window).resize(function(){
setResponsiveStyles();
});
});
function setResponsiveStyles() {
setFeaturedWorkHeight();
}

function setFeaturedWorkHeight(){
$('.featuredWork li').css("height", ($('.featuredWork li').width()) + "px" );
}

