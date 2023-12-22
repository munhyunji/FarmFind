<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

           <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; LT 찬건</p></div>
            <input type="hidden" id="sessionId" value="<%=session.getId()%>"/>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>	
        <script>
	         
    	    let didScroll;
	    	let lastScrollTop = 0;
	    	let delta = 2;
	    	let navbarHeight = $('.navbar').outerHeight(); //영향을 받을 요소
	    	
	    	$(window).scroll(function(event){
	    	    didScroll = true;
	    	});
	    	setInterval(function() {
	    	    if (didScroll) {
	    	        hasScrolled();
	    	        didScroll = false;
	    	    }
	    	}, 250);
	    	
	    	function hasScrolled() {
	    		
	    	    var st = $(this).scrollTop();
	    	   
	    	    if(Math.abs(lastScrollTop - st) <= delta)
	    	        return;
	    	    
	    	    if (st > lastScrollTop && st > navbarHeight){
	    	        // 스크롤 내릴때
	    	        $('.navbar').removeClass('show-nav').addClass('hide-nav');
	    	    } else {
	    	        // 스크롤 올릴때
	    	        if(st + $(window).height() < $(document).height()) {
	    	            $('.navbar').removeClass('hide-nav').addClass('show-nav');
	    	        }
	    	           
	    	    }
	    	    
	    	    lastScrollTop = st; //현재 스크롤위치 저장
	    	}
	    	
	        
        </script>