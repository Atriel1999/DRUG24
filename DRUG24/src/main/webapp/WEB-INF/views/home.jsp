<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="DRUG24 홈페이지" name="title"/>
</jsp:include>

<style>
      /* 지도 스타일 시작 */
      .map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
      .map_wrap {position:relative;width:100%;height:350px;}
      #category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
      #category li {float:left;list-style: none;width:50px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
      #category li.on {background: #eee;}
      #category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
      #category li:last-child{margin-right:0;border-right:0;}
      #category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
      #category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
      #category li .pharmacy {background-position: -10px -72px;}
      #category li.on .category_bg {background-position-x:-46px;}
      .placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
      .placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
      .placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
      .placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
      .placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
      .placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
      .placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
      .placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
      .placeinfo .tel {color:#0f7833;}
      .placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
      h2 { color: white; }
      *{font-family: 'Noto Sans KR', sans-serif;}
      .blodFont{font-family: 'Nanum Gothic', sans-serif;}
      /* 지도 스타일 끝 */
</style>

	<section class="bg-position-center mt-n5 mb-5"
		style="background-image: url(${path}/imgs/marketplace-hero.png);">
		<div class="pb-lg-1 mb-lg-3">
			<div class="container py-lg-5 my-lg-5">
				<div class="row mb-4 mb-sm-5">
					<div class="col-lg-7 col-md-9 text-center text-sm-start">
						<h1 class="text-heading lh-base">
							<span class='fw-light blodFont'>약 24,000 개의 의약품을</span> 안전하게 확인하고
							복용하세요! 의약품은 DRUG24
						</h1>
						<h2 class="h5 text-heading fw-light blodFont">Check and take
							your medicine safely on this site. DRUG24 for you!</h2>
					</div>
				</div>
				<div class="row pb-lg-5  mb-sm-5">
					<div class="col-lg-6 col-md-8">
						<div class="input-group input-group-lg flex-nowrap">
							<i
								class="ci-search position-absolute top-50 translate-middle-y ms-3"></i>
							<input class="form-control rounded-start" type="text"
								placeholder="Start your search">
							<button class="btn btn-primary btn-lg fs-base" type="button">Search</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 배너 끝 Hero selction -->

    <!-- 추천 아이템 시작 (Carousel)-->
	<section class="container position-relative pt-3 pt-lg-0 pb-5 mt-n3">
		<div class="card px-lg-2 border-0 shadow-lg">
			<div class="card-body px-5 pt-4 pb-3">
				<h2 class="h3 text-center">매일 매일 잊지 말고 위생 관리!</h2>
				<p class="text-muted text-center">위생 관리 추천 아이템</p>
				<!-- Carousel-->
				<div class="tns-carousel pt-1 px-5">
					<div class="tns-carousel-inner"
						data-carousel-options="{&quot;items&quot;: 2, &quot;gutter&quot;: 50, &quot;controls&quot;: false, &quot;nav&quot;: true, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;500&quot;:{&quot;items&quot;:2},&quot;768&quot;:{&quot;items&quot;:3}, &quot;992&quot;:{&quot;items&quot;:3, &quot;gutter&quot;: 50}}}">
						<!-- 상품1 -->
						<div>
							<div class="card product-card-alt">
								<div class="product-thumb">
									<button class="btn-wishlist btn-sm" type="button">
										<i class="ci-heart"></i>
									</button>
									<div class="product-card-actions">
										<a class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											href="marketplace-single.html"><i class="ci-eye"></i></a>
										<button class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											type="button">
											<i class="ci-cart"></i>
										</button>
									</div>
									<a class="product-thumb-overlay" href="marketplace-single.html"></a>
									<img class="" src="imgs/products/hygiene/greentoothpaste.png"
										alt="toothpaste">
								</div>
								<div class="card-body">
									<div
										class="d-flex flex-wrap justify-content-between align-items-start pb-2">
										<div class="text-muted fs-xs me-1">동아제약(주)</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i>
										</div>
									</div>
									<h3 class="product-title fs-sm mb-2">
										<a href="marketplace-single.html">가그린 블라스트치약 스피아민트</a>
									</h3>
									<div
										class="d-flex flex-wrap justify-content-between align-items-center">
										<div class="fs-sm me-2">
											<i class="ci-download text-muted me-1"></i>9<span
												class="fs-xs ms-1">후기</span>
										</div>
										<div class="bg-faded-accent text-accent rounded-1 py-1 px-2">
											<b>8,100원</b>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 상품2 -->
						<div>
							<div class="card product-card-alt">
								<div class="product-thumb">
									<button class="btn-wishlist btn-sm" type="button">
										<i class="ci-heart"></i>
									</button>
									<div class="product-card-actions">
										<a class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											href="marketplace-single.html"><i class="ci-eye"></i></a>
										<button class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											type="button">
											<i class="ci-cart"></i>
										</button>
									</div>
									<a class="product-thumb-overlay" href="marketplace-single.html"></a><img
										src="imgs/products/hygiene/gagreen.png" alt="gagreen">
								</div>
								<div class="card-body">
									<div
										class="d-flex flex-wrap justify-content-between align-items-start pb-2">
										<div class="text-muted fs-xs me-1">동아제약(주)</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
									<h3 class="product-title fs-sm mb-2">
										<a href="marketplace-single.html">가그린 제로블라스트 750ml</a>
									</h3>
									<div
										class="d-flex flex-wrap justify-content-between align-items-center">
										<div class="fs-sm me-2">
											<i class="ci-download text-muted me-1"></i>5<span
												class="fs-xs ms-1">후기</span>
										</div>
										<div class="bg-faded-accent text-accent rounded-1 py-1 px-2">
											<b>8,700원</b>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 상품3 -->
						<div>
							<div class="card product-card-alt">
								<div class="product-thumb">
									<button class="btn-wishlist btn-sm" type="button">
										<i class="ci-heart"></i>
									</button>
									<div class="product-card-actions">
										<a class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											href="marketplace-single.html"><i class="ci-eye"></i></a>
										<button class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											type="button">
											<i class="ci-cart"></i>
										</button>
									</div>
									<a class="product-thumb-overlay" href="marketplace-single.html"></a><img
										src="imgs/products/hygiene/jordantoothbrush.png"
										alt="toothbrush">
								</div>
								<div class="card-body">
									<div
										class="d-flex flex-wrap justify-content-between align-items-start pb-2">
										<div class="text-muted fs-xs me-1">동아제약(주)</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-half active"></i><i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
									<h3 class="product-title fs-sm mb-2">
										<a href="marketplace-single.html">조르단 울트라라이트 (미세모) 1개입</a>
									</h3>
									<div
										class="d-flex flex-wrap justify-content-between align-items-center">
										<div class="fs-sm me-2">
											<i class="ci-download text-muted me-1"></i>16<span
												class="fs-xs ms-1">후기</span>
										</div>
										<div class="bg-faded-accent text-accent rounded-1 py-1 px-2">
											<b>4,300원</b>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 상품4 -->
						<div>
							<div class="card product-card-alt">
								<div class="product-thumb">
									<button class="btn-wishlist btn-sm" type="button">
										<i class="ci-heart"></i>
									</button>
									<div class="product-card-actions">
										<a class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											href="marketplace-single.html"><i class="ci-eye"></i></a>
										<button class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											type="button">
											<i class="ci-cart"></i>
										</button>
									</div>
									<a class="product-thumb-overlay" href="marketplace-single.html"></a><img
										src="imgs/products/hygiene/fillidus.png" alt="filiidus">
								</div>
								<div class="card-body">
									<div
										class="d-flex flex-wrap justify-content-between align-items-start pb-2">
										<div class="text-muted fs-xs me-1">
											동아제약(주)</a>
										</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
									<h3 class="product-title fs-sm mb-2">
										<a href="marketplace-single.html">필리더스 퍼펙트 클린 맨즈 클렌저 150ml</a>
									</h3>
									<div
										class="d-flex flex-wrap justify-content-between align-items-center">
										<div class="fs-sm me-2">
											<i class="ci-download text-muted me-1"></i>2<span
												class="fs-xs ms-1">후기</span>
										</div>
										<div class="bg-faded-accent text-accent rounded-1 py-1 px-2">24,900원</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 상품5 -->
						<div>
							<div class="card product-card-alt">
								<div class="product-thumb">
									<button class="btn-wishlist btn-sm" type="button">
										<i class="ci-heart"></i>
									</button>
									<div class="product-card-actions">
										<a class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											href="marketplace-single.html"><i class="ci-eye"></i></a>
										<button class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											type="button">
											<i class="ci-cart"></i>
										</button>
									</div>
									<a class="product-thumb-overlay" href="marketplace-single.html"></a><img
										src="imgs/products/hygiene/orthomol.png" alt="orthmol">
								</div>
								<div class="card-body">
									<div
										class="d-flex flex-wrap justify-content-between align-items-start pb-2">
										<div class="text-muted fs-xs me-1">
											동아제약(주)</a>
										</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
									<h3 class="product-title fs-sm mb-2">
										<a href="marketplace-single.html">오쏘몰 바이탈 M (7일분)</a>
									</h3>
									<div
										class="d-flex flex-wrap justify-content-between align-items-center">
										<div class="fs-sm me-2">
											<i class="ci-download text-muted me-1"></i>2<span
												class="fs-xs ms-1">후기</span>
										</div>
										<div class="bg-faded-accent text-accent rounded-1 py-1 px-2">44,000원</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 상품6 -->
						<div>
							<div class="card product-card-alt">
								<div class="product-thumb">
									<button class="btn-wishlist btn-sm" type="button">
										<i class="ci-heart"></i>
									</button>
									<div class="product-card-actions">
										<a class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											href="marketplace-single.html"><i class="ci-eye"></i></a>
										<button class="btn btn-light btn-icon btn-shadow fs-base mx-2"
											type="button">
											<i class="ci-cart"></i>
										</button>
									</div>
									<a class="product-thumb-overlay" href="marketplace-single.html"></a><img
										src="imgs/products/hygiene/minimax.png" alt="minimax">
								</div>
								<div class="card-body">
									<div
										class="d-flex flex-wrap justify-content-between align-items-start pb-2">
										<div class="text-muted fs-xs me-1">
											동아제약(주)</a>
										</div>
										<div class="star-rating">
											<i class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star-filled active"></i><i
												class="star-rating-icon ci-star"></i>
										</div>
									</div>
									<h3 class="product-title fs-sm mb-2">
										<a href="marketplace-single.html">미니막스 랩 블루베리맛</a>
									</h3>
									<div
										class="d-flex flex-wrap justify-content-between align-items-center">
										<div class="fs-sm me-2">
											<i class="ci-download text-muted me-1"></i>2<span
												class="fs-xs ms-1">후기</span>
										</div>
										<div class="bg-faded-accent text-accent rounded-1 py-1 px-2">45,000원</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 추천 아이템 끝 -->
			<!-- 증상별 추천 아이템 시작-->
	<section class="container position-relative pb-5 mb-lg-3">
		<!-- Heading-->
		<div
			class="d-flex flex-wrap justify-content-between align-items-center pt-1 border-bottom pb-4 mb-4">
			<h2 class="h3 mb-0 pt-3 me-2">대표적 증상별 추천 아이템</h2>
			<div class="pt-3">
				<select class="form-select me-2">
					<option>감기 몸살</option>
					<option>소화 불량</option>
				</select>
			</div>
		</div>
		<!-- Grid-->
		<div class="row pt-2 mx-n2">
			<!-- Product-->
			<div class="col-lg-3 col-md-3 col-sm-6 mb-grid-gutter">
				<!-- 상품1-->
				<div class="card product-card-alt">
					<div class="product-thumb">
						<button class="btn-wishlist btn-sm" type="button">
							<i class="ci-heart"></i>
						</button>
						<div class="product-card-actions">
							<a class="btn btn-light btn-icon btn-shadow fs-base mx-2"
								href="marketplace-single.html"><i class="ci-eye"></i></a>
							<button class="btn btn-light btn-icon btn-shadow fs-base mx-2"
								type="button">
								<i class="ci-cart"></i>
							</button>
						</div>
						<a class="product-thumb-overlay" href="marketplace-single.html"></a><img
							src="imgs/products/colda.png" alt="colda">
					</div>
					<div class="card-body">
						<div
							class="d-flex flex-wrap justify-content-between align-items-start pb-2">
							<div class="text-muted fs-xs me-1">대원제약(주)</div>
							<div class="star-rating">
								<i class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-half active"></i><i
									class="star-rating-icon ci-star"></i>
							</div>
						</div>
						<h3 class="product-title fs-sm mb-2">
							<a href="marketplace-single.html">콜대원</a>
						</h3>
						<div
							class="d-flex flex-wrap justify-content-between align-items-center">
							<div class="fs-sm me-2">
								<i class="ci-download text-muted me-1"></i>3<span
									class="fs-xs ms-1">후기</span>
							</div>
							<div class="bg-faded-accent text-accent rounded-1 py-1 px-2">
								<b>2,000원</b>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 상품2 -->
			<div class="col-lg-3 col-md-3 col-sm-6 mb-grid-gutter ">
				<div class="card product-card-alt">
					<div class="product-thumb">
						<button class="btn-wishlist btn-sm" type="button">
							<i class="ci-heart"></i>
						</button>
						<div class="product-card-actions">
							<a class="btn btn-light btn-icon btn-shadow fs-base mx-2"
								href="marketplace-single.html"><i class="ci-eye"></i></a>
							<button class="btn btn-light btn-icon btn-shadow fs-base mx-2"
								type="button">
								<i class="ci-cart"></i>
							</button>
						</div>
						<a class="product-thumb-overlay" href="marketplace-single.html"></a><img
							src="imgs/products/modna.png" alt="modna">
					</div>
					<div class="card-body">
						<div
							class="d-flex flex-wrap justify-content-between align-items-start pb-2">
							<div class="text-muted fs-xs me-1">초당약품공업</div>
							<div class="star-rating">
								<i class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i>
							</div>
						</div>
						<h3 class="product-title fs-sm mb-2">
							<a href="marketplace-single.html">모드나 캡슐</a>
						</h3>
						<div
							class="d-flex flex-wrap justify-content-between align-items-center">
							<div class="fs-sm me-2">
								<i class="ci-download text-muted me-1"></i>26<span
									class="fs-xs ms-1">후기</span>
							</div>
							<div class="bg-faded-accent text-accent rounded-1 py-1 px-2">
								<b>3,000원</b>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 상품3 -->
			<div class="col-lg-3 col-md-3 col-sm-6 mb-grid-gutter">
				<div class="card product-card-alt">
					<div class="product-thumb">
						<button class="btn-wishlist btn-sm" type="button">
							<i class="ci-heart"></i>
						</button>
						<div class="product-card-actions">
							<a class="btn btn-light btn-icon btn-shadow fs-base mx-2"
								href="marketplace-single.html"><i class="ci-eye"></i></a>
							<button class="btn btn-light btn-icon btn-shadow fs-base mx-2"
								type="button">
								<i class="ci-cart"></i>
							</button>
						</div>
						<a class="product-thumb-overlay" href="marketplace-single.html"></a><img
							src="imgs/products/pancols.png" alt="pancols">
					</div>
					<div class="card-body">
						<div
							class="d-flex flex-wrap justify-content-between align-items-start pb-2">
							<div class="text-muted fs-xs me-1">동화약품</div>
							<div class="star-rating">
								<i class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star"></i>
							</div>
						</div>
						<h3 class="product-title fs-sm mb-2">
							<a href="marketplace-single.html">판콜 S</a>
						</h3>
						<div
							class="d-flex flex-wrap justify-content-between align-items-center">
							<div class="fs-sm me-2">
								<i class="ci-download text-muted me-1"></i>6<span
									class="fs-xs ms-1">후기</span>
							</div>
							<div class="bg-faded-accent text-accent rounded-1 py-1 px-2">
								<b>2,200원</b>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 상품4 -->
			<div class="col-lg-3 col-md-3 col-sm-6 mb-grid-gutter">
				<div class="card product-card-alt">
					<div class="product-thumb">
						<button class="btn-wishlist btn-sm" type="button">
							<i class="ci-heart"></i>
						</button>
						<div class="product-card-actions">
							<a class="btn btn-light btn-icon btn-shadow fs-base mx-2"
								href="marketplace-single.html"><i class="ci-eye"></i></a>
							<button class="btn btn-light btn-icon btn-shadow fs-base mx-2"
								type="button">
								<i class="ci-cart"></i>
							</button>
						</div>
						<a class="product-thumb-overlay" href="marketplace-single.html"></a><img
							src="imgs/products/tacenol.png" alt="tacenol">
					</div>
					<div class="card-body">
						<div
							class="d-flex flex-wrap justify-content-between align-items-start pb-2">
							<div class="text-muted fs-xs me-1">더파머시</div>
							<div class="star-rating">
								<i class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star-filled active"></i><i
									class="star-rating-icon ci-star"></i>
							</div>
						</div>
						<h3 class="product-title fs-sm mb-2">
							<a href="marketplace-single.html">타세놀정 500밀리그램 10정</a>
						</h3>
						<div
							class="d-flex flex-wrap justify-content-between align-items-center">
							<div class="fs-sm me-2">
								<i class="ci-download text-muted me-1"></i>1<span
									class="fs-xs ms-1">후기</span>
							</div>
							<div class="bg-faded-accent text-accent rounded-1 py-1 px-2">
								<b>1,500원</b>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- More button-->
		<div class="text-center">
			<a class="btn btn-outline-accent" href="marketplace-category.html">구매하러
				가기<i class="ci-arrow-right fs-ms ms-1"></i>
			</a>
		</div>
	</section>
	<!-- 지도 시작 -->
	<section class="container position-relative">
		<h1 class="text-center">주변 약국 찾기</h1>
		<div class="row align-items-md-stretch">
			<div class="col-md-6">
				<div class="h-100 mb-5 p-5 text-white bg-dark rounded-3">
					<!-- 위치 반경 약국 찾기 시작 -->
					<div id="pharmacyList" style="margin-top: 10px;"></div>
	
					<script>
							// const kakaoApiKey = '6067f303724b05524e0b10ce1d7bbcae';
		
							// function searchNearbyPharmacies(location) {
							//     const placesService = new kakao.maps.services.Places();
		
							//     placesService.keywordSearch('약국', (result, status) => {
							//         if (status === kakao.maps.services.Status.OK) {
							//             displayPharmacyList(result);
							//         } else {
							//             console.error('약국 검색에 실패했습니다.', status);
							//         }
							//     }, {
							//         location: location,
							//         radius: 1000, 
							//         page: 1, 
							//         size: 3
							//     });
							// }
		
							// function displayPharmacyList(pharmacies) {
							//     const pharmacyListDiv = document.getElementById('pharmacyList');
							//     pharmacyListDiv.innerHTML = '<h2>근처 약국 목록</h2>';
		
							//     if (pharmacies.length === 0) {
							//         pharmacyListDiv.innerHTML += '주변에 약국이 없습니다.';
							//         return;
							//     }
		
							//     pharmacies.forEach(pharmacy => {
							//         const pharmacyDiv = document.createElement('div');
							//         pharmacyDiv.innerHTML = `<strong>${pharmacy.place_name}</strong><br>${pharmacy.address_name}<br><br>`;
							//         pharmacyListDiv.appendChild(pharmacyDiv);
							//     });
							// }
		
							// navigator.geolocation.getCurrentPosition(position => {
							//     const lat = position.coords.latitude;
							//     const lng = position.coords.longitude;
		
							//     const myLocation = new kakao.maps.LatLng(lat, lng);
		
							//     searchNearbyPharmacies(myLocation);
							// });
						</script>
					<!-- 위치 반경 약국 찾기 끝 -->
				</div>
			</div>
			<div class="col-md-6">
				<div class="h-100 mb-5 bg-light border rounded-3">
					<!-- 지도 시작 -->
					<div class="map_wrap">
						<div div id="map"
							style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
						<ul id="category">
							<li id="PM9" data-order="2"><span
								class="category_bg pharmacy"></span> 약국</li>
						</ul>
					</div>
	
					<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6067f303724b05524e0b10ce1d7bbcae&libraries=services"></script> -->
					<script>
						// var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
						//     contentNode = document.createElement('div'), 
						//     markers = [],
						//     currCategory = '';
	
						// var mapContainer = document.getElementById('map'), 
						//     mapOption = {
						//         center: new kakao.maps.LatLng(37.566826, 126.9786567),
						//         level: 6
						//     };  
	
						// var map = new kakao.maps.Map(mapContainer, mapOption);
						// if (navigator.geolocation) {
	
						//   navigator.geolocation.getCurrentPosition(function(position) {
	
						//     var lat = position.coords.latitude,
						//         lon = position.coords.longitude;
	
						//     var locPosition = new kakao.maps.LatLng(lat, lon),
						//         message = '<div style="padding:5px;">근처에 약국을 찾았습니다.</div>';
	
						//     displayMarker(locPosition, message);
	
						//   });
	
						// } else {
	
						//   var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
						//         message = '근처에 약국이 없어요..'
	
						//   displayMarker(locPosition, message);
						// }
	
						// function displayMarker(locPosition, message) {
	
						//   var marker = new kakao.maps.Marker({  
						//       map: map, 
						//       position: locPosition
						//   }); 
	
						//   var iwContent = message,
						//       iwRemoveable = true;
	
						//   var infowindow = new kakao.maps.InfoWindow({
						//       content : iwContent,
						//       removable : iwRemoveable
						//   });
	
						//   infowindow.open(map, marker);
	
						//   map.setCenter(locPosition);      
						// }     
	
						// var ps = new kakao.maps.services.Places(map); 
	
						// kakao.maps.event.addListener(map, 'idle', searchPlaces);
	
						// contentNode.className = 'placeinfo_wrap';
	
						// addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
						// addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);
	
						// placeOverlay.setContent(contentNode);  
	
						// addCategoryClickEvent();
	
						// function addEventHandle(target, type, callback) {
						//     if (target.addEventListener) {
						//         target.addEventListener(type, callback);
						//     } else {
						//         target.attachEvent('on' + type, callback);
						//     }
						// }
	
						// function searchPlaces() {
						//     if (!currCategory) {
						//         return;
						//     }
	
						//     placeOverlay.setMap(null);
	
						//     removeMarker();
	
						//     ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
						// }
	
						// function placesSearchCB(data, status, pagination) {
						//     if (status === kakao.maps.services.Status.OK) {
	
						//         displayPlaces(data);
						//     } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	
						//     } else if (status === kakao.maps.services.Status.ERROR) {
	
						//     }
						// }
	
						// function displayPlaces(places) {
	
						//     var order = document.getElementById(currCategory).getAttribute('data-order');
	
						//     for ( var i=0; i<places.length; i++ ) {
	
						//             var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);
	
						//             (function(marker, place) {
						//                 kakao.maps.event.addListener(marker, 'click', function() {
						//                     displayPlaceInfo(place);
						//                 });
						//             })(marker, places[i]);
						//     }
						// }
	
						// function addMarker(position, order) {
						//     var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png',
						//         imageSize = new kakao.maps.Size(27, 28),
						//         imgOptions =  {
						//             spriteSize : new kakao.maps.Size(72, 208),
						//             spriteOrigin : new kakao.maps.Point(46, (order*36)),
						//             offset: new kakao.maps.Point(11, 28) 
						//         },
						//         markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
						//             marker = new kakao.maps.Marker({
						//             position: position,
						//             image: markerImage 
						//         });
	
						//     marker.setMap(map);
						//     markers.push(marker);
	
						//     return marker;
						// }
	
						// function removeMarker() {
						//     for ( var i = 0; i < markers.length; i++ ) {
						//         markers[i].setMap(null);
						//     }   
						//     markers = [];
						// }
	
						// function displayPlaceInfo (place) {
						//     var content = '<div class="placeinfo">' +
						//                     '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   
	
						//     if (place.road_address_name) {
						//         content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
						//                     '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
						//     }  else {
						//         content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
						//     }                
	
						//     content += '    <span class="tel">' + place.phone + '</span>' + 
						//                 '</div>' + 
						//                 '<div class="after"></div>';
	
						//     contentNode.innerHTML = content;
						//     placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
						//     placeOverlay.setMap(map);  
						// }
	
						// function addCategoryClickEvent() {
						//     var category = document.getElementById('category'),
						//         children = category.children;
	
						//     for (var i=0; i<children.length; i++) {
						//         children[i].onclick = onClickCategory;
						//     }
						// }
	
						// function onClickCategory() {
						//     var id = this.id,
						//         className = this.className;
	
						//     placeOverlay.setMap(null);
	
						//     if (className === 'on') {
						//         currCategory = '';
						//         changeCategoryClass();
						//         removeMarker();
						//     } else {
						//         currCategory = id;
						//         changeCategoryClass(this);
						//         searchPlaces();
						//     }
						// }
	
						// function changeCategoryClass(el) {
						//     var category = document.getElementById('category'),
						//         children = category.children,
						//         i;
	
						//     for ( i=0; i<children.length; i++ ) {
						//         children[i].className = '';
						//     }
	
						//     if (el) {
						//         el.className = 'on';
						//     } 
						// }
					</script>
					<!-- 위치 기반 지도 끝 -->
				</div>
			</div>
		</div>
	</section>
	<!-- 지도 끝 -->
	<!-- 뉴스룸 시작 -->
	<section class="container position-relative">
		<div class="py-lg-3">
			<h2 class="h3 text-center">News Room</h2>
			<p class="text-muted text-center mb-3 pb-4">최신 의학 뉴스, 일상 건강 정보를
				확인하세요</p>
			<div class="tns-carousel">
				<div class="tns-carousel-inner"
					data-carousel-options="{&quot;items&quot;: 2, &quot;gutter&quot;: 15, &quot;controls&quot;: false, &quot;nav&quot;: true, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;500&quot;:{&quot;items&quot;:2},&quot;768&quot;:{&quot;items&quot;:3}, &quot;992&quot;:{&quot;items&quot;:3, &quot;gutter&quot;: 30}}}">
					<div>
						<div class="card">
							<a class="blog-entry-thumb" href="blog-single.html"><img
								class="card-img-top" src="imgs/blog/cardnews1.png" alt="Post"></a>
							<div class="card-body">
								<h2 class="h6 blog-entry-title">
									<a href="blog-single.html">어르신을 위한 안전한 약물 사용 안내서</a>
								</h2>
								<p class="fs-sm">어르신은 왜 약물 사용에 주의해야 할까요? 어르신들은 여러가지 약을 복용하시는
									분들이 많아요. 그리고 약물 부작용 발생 위험이 커요</p>
								<div class="fs-xs text-nowrap">
									<a class="blog-entry-meta-link text-nowrap" href="#">Dec 23</a><span
										class="blog-entry-meta-divider mx-2"></span><a
										class="blog-entry-meta-link text-nowrap"
										href="blog-single.html#comments"><i class="ci-message"></i>1</a>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div class="card">
							<a class="blog-entry-thumb" href="blog-single.html"><img
								class="card-img-top" src="imgs/blog/cardnews2.png" alt="Post"></a>
							<div class="card-body">
								<h2 class="h6 blog-entry-title">
									<a href="blog-single.html">여드름약, 이소트레티노인 안전사용! 엄마와 아기를
										지켜주세요!</a>
								</h2>
								<p class="fs-sm">이소트레티노인은 태아에게 심각한 기형 유발 가능</p>
								<div class="fs-xs text-nowrap">
									<a class="blog-entry-meta-link text-nowrap" href="#">Oct 10</a><span
										class="blog-entry-meta-divider mx-2"></span><a
										class="blog-entry-meta-link text-nowrap"
										href="blog-single.html#comments"><i class="ci-message"></i>28</a>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div class="card">
							<a class="blog-entry-thumb" href="blog-single.html"><img
								class="card-img-top" src="imgs/blog/cardnews3.png" alt="Post"></a>
							<div class="card-body">
								<h2 class="h6 blog-entry-title">
									<a href="blog-single.html">나의 부작용 정보 나눌수록 안전해집니다.</a>
								</h2>
								<p class="fs-sm">약을 복용한 후 몸에 이상이 있다면 부작용일 수 있습니다.</p>
								<div class="fs-xs text-nowrap">
									<a class="blog-entry-meta-link text-nowrap" href="#">Sep 15</a><span
										class="blog-entry-meta-divider mx-2"></span><a
										class="blog-entry-meta-link text-nowrap"
										href="blog-single.html#comments"><i class="ci-message"></i>46</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- More button-->
			<div class="text-center pt-4 mt-md-2">
				<a class="btn btn-outline-accent" href="blog-grid-sidebar.html">뉴스
					보러 가기<i class="ci-arrow-right fs-ms ms-1"></i>
				</a>
			</div>
		</div>
	</section>
	<!-- 뉴스룸 끝 -->
	
	<section class="container mb-3 ">
		<div class="row row-cols-2">
			<div class="col">
				<div class="border-bottom text-center mb-2">
					<h1>공지사항</h1>
				</div>
				<div class="pb-1">
					<div class="alert alert-info d-flex fs-md mb-1" role="alert">
						<div class="alert-icon fs-lg">
							<i class="ci-announcement"></i>
						</div>
						<div>
							<strong>안내 :</strong>※매월 첫째 주 일요일 22시~24시는 <strong>서버
								정기점검 시간</strong>입니다.※
						</div>
					</div>
					<div class="pb-1">
						<div class="my-1">
							<dl>
								<dt class="border-top mt-2">2024.01.31 - 폐쇄 안내</dt>
								<dd class="pb-3 border-bottom">적자 운영으로 사이트 폐쇄합니다. 그동안 감사합니다.</dd>
								<dt>2024.01.31 - 쇼핑몰 철수 안내</dt>
								<dd class="pb-3 border-bottom">성원에 감사드립니다.</dd>
								<dt>2023.05.06 - 서버 정상화 안내</dt>
								<dd class="pb-3 border-bottom">서비스 재개 되었습니다.</dd>
								<dt>2023.05.05 - 서버 이전 작업 안내</dt>
								<dd class="pb-3 border-bottom">22:00 ~ 2024.01.01 08:00 서버
									이전 작업으로 서비스가 잠시 중단됩니다.</dd>
								<dt>
									2023.03.31 - 쇼핑몰 오픈 안내 <a href="#" target="_blank"
										rel="noopener">Official website</a>
								</dt>
								<dd class="pb-3 border-bottom">증상별 추천 아이템, 카테고리별 아이템 판매를
									시작합니다.</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
			<div class="col">
				<div class=" text-center mb-2">
					<h1>커뮤니티</h1>
				</div>
				<div class="pb-1">
					<div class="pb-1">
						<div class="my-1">
							<dl>
								<dt class="border-top mt-2">2024.01.31 - 폐쇄 안내</dt>
								<dd class="pb-3 border-bottom">적자 운영으로 사이트 폐쇄합니다. 그동안 감사합니다.</dd>
								<dt>2024.01.31 - 쇼핑몰 철수 안내</dt>
								<dd class="pb-3 border-bottom">성원에 감사드립니다.</dd>
								<dt>2023.05.06 - 서버 정상화 안내</dt>
								<dd class="pb-3 border-bottom">서비스 재개 되었습니다.</dd>
								<dt>2023.05.05 - 서버 이전 작업 안내</dt>
								<dd class="pb-3 border-bottom">22:00 ~ 2024.01.01 08:00 서버
									이전 작업으로 서비스가 잠시 중단됩니다.</dd>
								<dt>
									2023.03.31 - 쇼핑몰 오픈 안내 <a href="#" target="_blank"
										rel="noopener">Official website</a>
								</dt>
								<dd class="pb-3 border-bottom">증상별 추천 아이템, 카테고리별 아이템 판매를
									시작합니다.</dd>
								<dt>
									2023.03.31 - 쇼핑몰 오픈 안내 <a href="#" target="_blank"
										rel="noopener">Official website</a>
								</dt>
								<dd class="pb-3 border-bottom">증상별 추천 아이템, 카테고리별 아이템 판매를
									시작합니다.</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- 공지사항 끝 -->
</main>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

