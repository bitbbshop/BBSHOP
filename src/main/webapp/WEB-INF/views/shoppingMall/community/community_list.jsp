<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ include file="../include/community_header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
body {
	font-size: 17px;
	font-weight: bold;
}

th, td {
	color: black;
	text-align: center;
}

a {
	color: #777777;
}
</style>

<!-- ================================게시판========================== -->
<section id="tabs" class="project-tab">
	<div class="container" style="margin-left: 300px;">
		<div class="row">
			<div class="col-md-12">
				<nav style="width: 1200px;">
					<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist"
						style="margin-top: 120px;">
						<a class="nav-item nav-link active" id="nav-home-tab"
							data-toggle="tab" href="#nav-home" role="tab"
							aria-controls="nav-home" aria-selected="true"> <img
							src="resources/community/img/kbo_main.png" width="70" height="70"
							class="img-fluid rounded"></a> <a
							class="nav-item nav-link link" id="nav-home-tab"
							data-toggle="tab" href="#nav-home" role="tab"
							aria-controls="nav-home" aria-selected="false"> <img
							src="resources/community/img/lgtwins_main.png" width="70"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false"> <img
							src="resources/community/img/lottegiants_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false"> <img
							src="resources/community/img/hanwhaeagles_main.png" width="80"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false"> <img
							src="resources/community/img/kiatigers_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false"> <img
							src="resources/community/img/doosanbears_main.png" width="70"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false"> <img
							src="resources/community/img/ncdinos_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false"> <img
							src="resources/community/img/samsunglions_main.png" width="75"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false"> <img
							src="resources/community/img/kiwoomheroes_main.png" width="80"
							height="70" class="img-fluid rounded">
						</a> <a class="nav-item nav-link" id="nav-contact-tab"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false"> <img
							src="resources/community/img/skwyverns_main.png" width="70"
							height="70" class="img-fluid rounded"></a> <a
							class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
							href="#nav-contact" role="tab" aria-controls="nav-contact"
							aria-selected="false"> <img
							src="resources/community/img/ktwiz_main.png" width="70"
							height="70" class="img-fluid rounded">
						</a>
					</div>
				</nav>
				<div>
					<div style="text-align: right; padding: 30px 0; width: 1200px;">
						<input type="button" onclick="location.href='/community_form.do'"
							value="글쓰기" />
					</div>
				</div>
				<div class="tab-content" id="nav-tabContent" style="width: 1200px;">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<table class="table table-bordered" cellspacing="0">
							<thead>
								<tr>
									<th style="width: 50px;">번호</th>
									<th style="width: 500px; text-align: left;">제목</th>
									<th style="width: 100px;">글쓴이</th>
									<th style="width: 150px;">날짜</th>
									<th style="width: 50px;">조회</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${list}" var="board">
									<tr>
										<td><c:out value="${board.BOARD_NUM}" /></td>
										<td style="text-align: left;"><a
											href="/community_detail.do"><c:out value="${board.TITLE}" /></a></td>
										<td>서주혁</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd"
												value="${board.REGDATE}" /></td>
										<td><c:out value="${board.HIT}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>



					<div style="display: flex; float: right;">
						<!-- 페이지 출력 - script 항상 같이 따라가야함 -->
						<div style="padding-right: 250px;">
							<nav class="cat_page mx-auto"
								aria-label="Page navigation example">
								<ul class="pagination">

									<c:if test="{pageMaker.prev}">
										<li class="page-item page-item-left"><a class="page-link"
											href="#">Previous<i class="fa fa-chevron-left"
												aria-hidden="true"></i>
										</a></li>
									</c:if>

									<c:forEach var="num" begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}">
										<li class="page-item active"><a class="page-link"
											href="#">${num}</a></li>
									</c:forEach>


									<c:if test="{pageMaker.next}">
										<li class="page-item page-item-right"><a
											class="page-link" href="#">Next<i
												class="fa fa-chevron-right" aria-hidden="true"></i>
										</a></li>
									</c:if>
								</ul>
							</nav>
						</div>

						<!-- select -->
						<div>
							<div class="single-element-widget">
								<div class="default-select" id="default-select">
									<select>
										<option value="1">글쓴이</option>
										<option value="1">제목</option>
									</select> <input type="text" placeholder="">
									<button>검색</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../include/community_footer.jsp"%>