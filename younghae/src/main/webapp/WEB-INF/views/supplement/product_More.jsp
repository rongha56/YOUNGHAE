<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <style>
        /*목차*/
        .bn_index ul li{
            list-style: none;
            position: relative;
            display: inline-block;
        }
        
        .bn_index a {
            color: black;
            
        }
        
        .bn_index li:last-child a{
            font-weight: 800;
            color : #FD9F28;
        }
    </style>   
</head>

<body>
		<jsp:include page="/WEB-INF/views/common/topmenubar.jsp"></jsp:include>
    <!-- Header Section End -->
    <div class="container">
        <div class="bn_index mt-5">
            <ul>
                <li>영양 성분 조회</li>
                <li> <b>/</b> </li>
                <li><a href="#">성분 이름</a></li>
                <li> <b>/</b> </li>
                <li><a href="#">영양제 더보기</a></li>
            </ul>
        </div>
    </div>

    <!-- Product Section Begin -->
    <section class="product spad" style="margin-top: -2%;">
        <div class="container" >
            <div class="row row-cols-1">
                <div class="hero__search" style="float: left; position: relative; left: 1%;">
                    <form action="#" style="width: 50%;">
                        <div class="input-group mt-3">
                            <label style="font-size: 180%; font-weight: 800; color: rgb(118, 128, 138); margin-right: 3%;">오메가3</label>
                            <label style="font-size: 180%; font-weight: 800; color: #24E082; margin-right: 3%;">제품 더보기</label>
                        </div>
                    </form>
                </div>
            </div>
            <br><br><br><br>

            <div class="row">
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now01841/v/26.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/blb/blb01012/v/29.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nrt/nrt10151/y/53.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nor/nor03770/l/43.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/car/car01733/v/16.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div><br><br>
            <!-- /실시간트렌드 섹션 --> 

            <div class="row">
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now01841/v/26.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/blb/blb01012/v/29.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nrt/nrt10151/y/53.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nor/nor03770/l/43.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/car/car01733/v/16.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div><br><br>

            <div class="row">
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/now/now01841/v/26.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/blb/blb01012/v/29.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nrt/nrt10151/y/53.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6" style="margin-right: 40px;">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/nor/nor03770/l/43.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/car/car01733/v/16.jpg" style="margin-top: 30px;">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text" style="text-align: left;">
                            <span style="float: right; font-size: 18px; margin-top: -1%;"><i class="fa-solid fa-star star"></i>&nbsp;&nbsp;4.32</span>
                            <h6 style="display: inline-block;">나우푸드</a></h6>
                            <h5>울트라 오메가3</h5>
                            <h5>35,600</h5>
                            <br>
                            <span style="float: right; font-size: 13px; margin-top: -1%; color: #1a19197e;">몸에 좋은 오메가3입니다. 츄라이츄라이해보세요</span>
                            <div>
                                <button class="btn btn_cart"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;&nbsp;장바구니</button>
                                <button class="btn btn_comment"><i class="fa-solid fa-comment"></i>&nbsp;&nbsp;&nbsp;193</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div><br><br>
            
            <div class="product__pagination" style="text-align: center;">
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#"><i class="fa fa-long-arrow-right"></i></a>
            </div>


        </div>
    </section>



    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- Footer Section End -->
</body>

</html>