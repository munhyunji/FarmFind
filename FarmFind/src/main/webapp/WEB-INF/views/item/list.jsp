<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../inc/header.jsp" %>

<style>

	/*
	= Pagination
*/

		.c-tbl-paging {
		    margin-top: 12px;
		    display: -webkit-box;
		    display: -webkit-flex;
		    display: -ms-flexbox;
		    display: flex;
		    -webkit-box-pack: justify;
		    -webkit-justify-content: space-between;
		    -ms-flex-pack: justify;
		    justify-content: space-between;
		    -webkit-box-align: center;
		    -webkit-align-items: center;
		    -ms-flex-align: center;
		    align-items: center;
   	 	}
   	 	
		.page-link {
	    width: 24px;
	    height: 24px;
	    line-height: 24px;
	    display: -webkit-box;
	    display: -webkit-flex;
	    display: -ms-flexbox;
	    display: flex;
	    -webkit-box-align: center;
	    -webkit-align-items: center;
	    -ms-flex-align: center;
	    align-items: center;
	    -webkit-box-pack: center;
	    -webkit-justify-content: center;
	    -ms-flex-pack: center;
	    justify-content: center;
	    color: black;
	    
	    }
	    
	    
		.c-pagination {
		  > ul {
		    display: flex;
		    li {
		      padding: 0 2px;
		    }
		  }
		}
			    
	    .page-link .is-blind {
		    width: 24px;
		    height: 24px;
		    background-image: url(../resources/images/ico/ico_sprites_pagination.svg);
		    background-size: auto 24px;
		    background-repeat: no-repeat;
		    overflow: hidden;
		    text-indent: 100%;
		    white-space: nowrap;
		    display: inline-block;
	    }
	    
	    .page-link .is-blind.p-prev {
    background-position: -30px 0;
}

	     .page-link .is-blind.p-next {
    background-position: -60px 0;
}
	   
	   
	    .page-link .is-blind.p-end {
    background-position: -94px 0;
}

</style>

		<input type="hidden" name="pageNo" id="pageNo" value="23">
					
        <!-- Page content-->
        <div class="container">
            <div class="row">
            	
            	<%@ include file ="../inc/sidebar.jsp" %>
            	
                <!-- Blog entries-->
                <div class="col-lg-9">
 <!--                    Featured blog post
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="https://dummyimage.com/850x350/dee2e6/6c757d.jpg" alt="..." /></a>
                        <div class="card-body">
                            <div class="small text-muted">January 1, 2023</div>
                            <h2 class="card-title">Featured Post Title</h2>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                            <a class="btn btn-primary" href="#!">Read more →</a>
                        </div>
                    </div> -->
                    <!-- 아이템 리스트 -->
                    <div class="row" id="row">
                            <!-- 
                            <div class="card itemcard mb-4">
                                <a href="#!"><img class="card-img-top" src="${path }/resources/assets/img/item/깊은 바다의 침대.PNG" alt="..." />
                                <div class="card-body">
                                    <div class="small text-muted">2023-12</div> 
                                    <h2 class="card-title h6">낭만 농장 깊은 바다의 침대</h2>
                                </div>
                                </a>
                            </div>-->

                    </div>
                    <div class="row">
                    <!-- Pagination-->
                    <!-- c-tbl-paging -->
				<div class="c-tbl-paging">
					<p class="page-info">
						Total Page <em>${pageMap.totPage}</em> page
					</p>
					<nav class="c-pagination">
						<ul>
							<li><a class="page-link" href="javascript:goPage('1')"
								   aria-label="처음"> <span class="is-blind p-first">처음</span>
							</a></li>
							<li><a class="page-link"
								   href="javascript:goPage('${pageMap.prevPage}')" aria-label="이전">
								<span class="is-blind p-prev">이전</span>
							</a></li>
							<c:forEach var="num" begin="${pageMap.blockBegin}"
									   end="${pageMap.blockEnd}">
								<c:choose>
									<c:when test="${num == pageMap.pageNo}">
										<li><a class="page-link is-active" href="javascript:;">1</a></li>
										<li><a class="page-link is-active" href="javascript:;">2</a></li>
										<li><a class="page-link is-active" href="javascript:;">3</a></li>
										<li><a class="page-link is-active" href="javascript:;">4</a></li>
										
									</c:when>
									<c:otherwise>
										<a class="page-link" href="javascript:goPage('1')">1</a>&nbsp;
										<a class="page-link" href="javascript:goPage('2')">2</a>&nbsp;
										<a class="page-link" href="javascript:goPage('3')">3</a>&nbsp;
										<a class="page-link" href="javascript:goPage('4')">4</a>&nbsp;
										<a class="page-link" href="javascript:goPage('5')">5</a>&nbsp;
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<li><a class="page-link"
								   href="javascript:goPage(23)" aria-label="다음">
								<span class="is-blind p-next">다음</span>
							</a></li>
							<li><a class="page-link"
								   href="javascript:goPage(26)" aria-label="끝">
								<span class="is-blind p-end">끝</span>
							</a></li>
						</ul>
					</nav>
				</div>
                </div>
             </div>  
            </div>
        </div>
<%@ include file ="../inc/footer.jsp" %>
	
</body>
</html>
	<script>
	
	let apiurl = "http://localhost:8090/";
	
	 $(document).ready(function () {
	        // AJAX 요청
	        $.ajax({
	            url: apiurl+'item/list',
	            type: 'GET',
	            contentType: "application/json; charset=utf-8;",
	            dataType: 'json',
	            success: function (data) {
	                // 성공 시 실행할 코드
	                console.log('AJAX 요청 성공:', data);
	                
	                let html = "";
					for(i=0; i< data.list.length; i++){
						
					   html += "<div class='card itemcard mb-4'>";
	                   html +=      "<a href='#!'><img class='card-img-top' src="+data.list[i].item_img_aft+" alt='...' />";
                	   html +=     "<div class='card-body'>";
                	   html +=         "<div class='small text-muted'>2023-12</div>";
                	   html +=          "<h2 class='card-title h6'>"+data.list[i].item_nm+"</h2>";
                	   html +=      "</div>";
                	   html +=      "</a>";
                	   html +=   "</div>";							
					}
					
	               $("#row").append(html); 
	               
	               
	            },
	            error: function (request, error) {
	                // 실패 시 실행할 코드
	                alert("API 통신에 실패하였습니다. \n관리자에게 문의 바랍니다.");
	                console.log('AJAX 요청 실패:' + "code:"+request.status+"\n"+"message:"+request.responseText);
	            }
	        });

	    });
	 
		 function goPage(num){ // 페이징처리
	
					//location.href = "${path}/item/list?page=" + num;
					//location.href = "item/list?policyYear="+ "&page=" + $("#pageNo").val();
					 // AJAX 요청
			        $.ajax({
			            url: apiurl+'item/list',
			            type: 'GET',
			            data : {page : num},
			            contentType: "application/json; charset=utf-8;",
			            dataType: 'json',
			            success: function (data) {
			                // 성공 시 실행할 코드
			                console.log('AJAX 요청 성공:', data);
			                
			               let html = "";
							for(i=0; i< data.list.length; i++){
								
							   html += "<div class='card itemcard mb-4'>";
			                   html +=      "<a href='#!'><img class='card-img-top' src="+data.list[i].item_img_aft+" alt='...' />";
		                	   html +=     "<div class='card-body'>";
		                	   html +=         "<div class='small text-muted'>2023-12</div>";
		                	   html +=          "<h2 class='card-title h6'>"+data.list[i].item_nm+"</h2>";
		                	   html +=      "</div>";
		                	   html +=      "</a>";
		                	   html +=   "</div>";							
							}
							$("#row").empty();	
			               $("#row").append(html); 
			               
			               
			            },
			            error: function (request, error) {
			                // 실패 시 실행할 코드
			                alert("API 통신에 실패하였습니다. \n관리자에게 문의 바랍니다.");
			                console.log('AJAX 요청 실패:' + "code:"+request.status+"\n"+"message:"+request.responseText);
			            }
			        });
			}

	
	</script>

