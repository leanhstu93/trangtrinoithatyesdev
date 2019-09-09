$(function(){ 
	/*$(".tab-panel-tc > li:eq(0)").addClass('active'); 
	var alias = $(".tab-panel > li:eq(0) a").attr("alias");
	$.ajax({ 
          url: '/loaitinajax/',
          data: {alias: alias},
          type: "POST",
          dataType: "html",
          success: function(result){
                $(".wrp-cate-tc .tab-ct").html(result);
              },
          error: function(){
              console.log("failure");
          }
    }); */
  $(".theme-tab-navs li").click(function(event) {
    /* Act on the event */
    var has = $(this).index();
    $(".theme-tab-navs li").removeClass('active');
    $(this).addClass('active');
    $(".tab-content .tab-pane").removeClass('active');
    $(".tab-content .tab-pane:eq("+has+")").addClass('active');
    return false;
  });
	$(".tab-panel > li").click(function(event) {
		/* Act on the event */
		var has = $(this).index();
		var alias = $(this).children().attr("alias");
		$.ajax({ 
              url: '/loaitinajax/',
              data: {alias: alias},
              dataType: "html",
              type: "POST",
              success: function(result){
                $(".wrp-cate-tc .tab-ct").html(result);
              },
              error: function(){
                  console.log("failure");
              }
        });
		$(".tab-panel > li").removeClass('active');
		$(".tab-panel > li:eq("+has+")").addClass('active');
		return false;
	});
	$(".tab-panel .dropdown-menu > li").click(function(event) { 
		/* Act on the event */
		var has = $(this).index();
		var alias = $(this).children().attr("alias");
		$.ajax({ 
              url: '/loaitinajax/',
              data: {alias: alias},
              dataType: "html",
              type: "POST",
              success: function(result){
                $(".wrp-cate-tc .tab-ct").html(result);
              },
              error: function(){
                  console.log("failure");
              }
        });
		$(".tab-panel .dropdown-menu > li").removeClass('active');
		$(".tab-panel .dropdown-menu > li:eq("+has+")").addClass('active');
		return false;
	});
  $("#moreVideos").click(function() { 
    /* Act on the event */
    var href = $(this).attr("href");
    var page = $(this).attr("page");
    var html = $(this);
    html.css({"display": 'none'});
    $.ajax({ 
              url: href,
              //data: {alias: alias},
              dataType: "html",
              type: "POST",
              success: function(result){
                $(".ct-video").append(result);
              },
              error: function(){
                  console.log("failure");
              }
        });
    $.ajax({ 
              url: "/loadpagevideo.html?page="+page,
              //data: {alias: alias},
              dataType: "html",
              type: "POST",
              success: function(result){
                $(".wrp-more").html(result);
              },
              error: function(){
                  console.log("failure");
              }
        });
    html.css({"display": 'block'});
    return false;
  });

  $("#moreNews").click(function() { 
    /* Act on the event */
    var href = $(this).attr("href");
    var page = $(this).attr("page");
    var alias = $(this).attr("alias");
    var html = $(this);
    $(this).css("display",'none');
    $.ajax({ 
              url: href,
              data: {alias: alias},
              dataType: "html",
              type: "POST",
              success: function(result){
                $(".box-ct-news").append(result);
              },
              error: function(){
                  console.log("failure");
              }
        });
    $.ajax({ 
              url: "/loadpagenews.html?page="+page,
              data: {alias: alias},
              dataType: "html",
              type: "POST",
              success: function(result){
                $(".wrp-more").html(result);
              },
              error: function(){
                  console.log("failure");
              }
        });
    html.css({
      "display": 'block'
    });
    return false;
  });
  $("#moreSearch").click(function() { 
    /* Act on the event */
    var href = $(this).attr("href");
    var page = $(this).attr("page");
    var alias = $(this).attr("alias");
    var html = $(this);
    $(this).css("display",'none');
    $.ajax({ 
              url: href,
              data: {alias: alias},
              dataType: "html",
              type: "POST",
              success: function(result){
                $(".box-ct-news").append(result);
              },
              error: function(){
                  console.log("failure");
              }
        });
    $.ajax({ 
              url: "/loadpagesearch.html?page="+page,
              data: {keyword: alias},
              dataType: "html",
              type: "POST",
              success: function(result){
                $(".wrp-more").html(result);
              },
              error: function(){
                  console.log("failure");
              }
        });
    html.css({
      "display": 'block'
    });
    return false;
  });
})