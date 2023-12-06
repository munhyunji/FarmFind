<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<style>
.detail_row {
	display: flex;
}

.info_box {
	width: 40%;
	padding: 10px;
	box-sizing: border-box;
}

.img_box {
	width: 60%;
}

img {
	width: 100%;
	height: auto;
	display: block; /* Remove default inline display */
}

input:focus {
	outline: none;
}

.c-input {
	color: #494949;
	border: 0;
	border-bottom: 1px solid #e9e9e9;
	border-radius: 0;
	padding: 0 0 4px 0;
	background: transparent;
	overflow: hidden;
	float: right;
}

.label-input {
	display: flex;
	align-items: center;
}

.label-input label {
	width: 30%;
	margin-right: 10px;
	/* Optional: Adjust the spacing between label and input */
	font-size: 12px;
	font-weight: 400;
	color: #494949;
	margin-bottom: 8px;
}

.label-input input.c-input {
	width: 60%;
}
</style>
<!-- Page content-->
<div class="container">
	<div class="row">

		<%@ include file="../inc/sidebar.jsp"%>

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

			<div class="detail_row">
				<div class="info_box">
					<div class=" label-input">
						<label for="item_nm">이름</label> <input type="text" class="c-input"
							id="item_nm" name="" value="" readonly="readonly">
					</div>
					<div class=" label-input">
						<label for="item_nm">사이즈</label> <input type="text"
							class="c-input" id="item_nm" name="" value="" readonly="readonly">
					</div>
					<div class=" label-input">
						<label for="item_nm">염색 가능 여부 </label> <input type="text"
							class="c-input" id="item_nm" name="" value="" readonly="readonly">
					</div>
					<div class=" label-input">
						<label for="item_nm">획득처</label> <input type="text"
							class="c-input" id="item_nm" name="" value="" readonly="readonly">
					</div>
					<div class=" label-input">
						<label for="item_nm">획득처 이름</label> <input type="text"
							class="c-input" id="item_nm" name="" value="" readonly="readonly">
					</div>
					<div class=" label-input">
						<label for="item_nm">획득처 날짜 </label> <input type="text"
							class="c-input" id="item_nm" name="" value="" readonly="readonly">
					</div>
					<div class=" label-input">
						<label for="item_nm">설명 </label> <input type="text"
							class="c-input" id="item_nm" name="" value="" readonly="readonly">
					</div>
					<div class=" label-input">
						<label for="item_nm">기타 비고 (상호작용)</label> <input type="text"
							class="c-input" id="item_nm" name="" value="" readonly="readonly">
					</div>
				</div>

				<div class="img_box">
					<img
						src="https://storage.cloud.google.com/farmfind/%ED%94%BC%ED%95%A0%20%EC%88%98%20%EC%97%86%EB%8A%94%20%EC%8A%B9%EB%B6%80%20%ED%8C%90%EB%84%AC.jpg">
				</div>
				
			</div>
			<div>
				<a class="btn btn-primary" href="#!">뒤로가기 </a>
			</div>
		</div>
	</div>
</div>
</div>
<%@ include file="../inc/footer.jsp"%>

</body>
</html>