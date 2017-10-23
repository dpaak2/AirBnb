<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title> AirBnb</title>
   <link rel="stylesheet" href="${path.css}/main.css" /> 
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
   
   <!-- include summernote css/js-->
   <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
   <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
     
   <!-- 구글 chart -->
   <script src="https://www.gstatic.com/charts/loader.js"></script>
     
     
   <link rel="shortcut icon" href="${path.img}/air-fabicon.png">
   <script src="${path.js}/app.js"></script>
   <script src="${path.js}/bongki.js"></script>
   <script src="${path.js}/heekyung.js"></script>
   <script src="${path.js}/jiwon.js"></script>
   <script src="${path.js}/yongju.js"></script>
 
<style>
	.menufix {position:fixed; top:0px;}
	.revfix {position:fixed; top:0px;}
</style>
</head>
<body>

<div style="height: 300px;width: 100%;display: inline-block; min-width: 100px;">
<!--logobox  -->
<div id="mainLogobox" class="main-nav-logobox" style="float: left;">
		       <div class="main-nav-logobox2">
		        <div  class="main-nav-logobox3" >
		        <a id="logoHome" href=""  style="z-index: 900; text-decoration: none">
		          <svg viewBox="0 0 1000 1000" role="presentation" aria-hidden="true" focusable="false" style="display: block;fill: #FF5A5F;height: 1em;width: 1em;">
		  <path d="M499.3 736.7c-51-64-81-120.1-91-168.1-10-39-6-70 11-93 18-27 45-40 80-40s62 13 80 40c17 23 21 54 11 93-11 49-41 105-91 168.1zm362.2 43c-7 47-39 86-83 105-85 37-169.1-22-241.1-102 119.1-149.1 141.1-265.1 90-340.2-30-43-73-64-128.1-64-111 0-172.1 94-148.1 203.1 14 59 51 126.1 110 201.1-37 41-72 70-103 88-24 13-47 21-69 23-101 15-180.1-83-144.1-184.1 5-13 15-37 32-74l1-2c55-120.1 122.1-256.1 199.1-407.2l2-5 22-42c17-31 24-45 51-62 13-8 29-12 47-12 36 0 64 21 76 38 6 9 13 21 22 36l21 41 3 6c77 151.1 144.1 287.1 199.1 407.2l1 1 20 46 12 29c9.2 23.1 11.2 46.1 8.2 70.1zm46-90.1c-7-22-19-48-34-79v-1c-71-151.1-137.1-287.1-200.1-409.2l-4-6c-45-92-77-147.1-170.1-147.1-92 0-131.1 64-171.1 147.1l-3 6c-63 122.1-129.1 258.1-200.1 409.2v2l-21 46c-8 19-12 29-13 32-51 140.1 54 263.1 181.1 263.1 1 0 5 0 10-1h14c66-8 134.1-50 203.1-125.1 69 75 137.1 117.1 203.1 125.1h14c5 1 9 1 10 1 127.1.1 232.1-123 181.1-263.1z"></path>
		  </svg>
		        </a>
		   </div>
		</div>
		</div>
		
<!--search input box  -->
	<div style="width: 60%;float:left; margin: 0 10px">	
       <div class="inner-addon left-addon" style="width: 200px;float: left; margin: 10px;">
		 <i id="searchIcon" class="glyphicon glyphicon-search"></i>
		 <input type="text" class="form-control" aria-describedby="sizing-addon1" />
	</div>
	   
	   
<div style="width: 800px; float: left;">	
       <div class="inner-addon left-addon" style="width: 200px;float: left; margin: 10px;">
		 <i id="searchIcon" class="glyphicon glyphicon-calendar"></i>
		<!-- <input type="text" class="form-control" aria-describedby="sizing-addon1" />-->
		  <div id="datepicker1" style="width: 100%; padding-top:10px;">
		 <input type="text" id="search-startDate" class="form-control" name="search-checkin" style="height:40px; font-size:15px;" required="required"/>
		
	</div>
	   <!--checkin  -->
	<div style="width: 200px; height:20px;float: left;">	
    <div class="form-group" >
     <!--  <span style="font-size: 14px;font-weight:600;">체크인</span> -->
		<span class="glyphicon glyphicon-calendar"  style="font-size: 14px;">체크인</span>
		 <div id="datepicker1" style="width: 100%; padding-top:10px;">
		 <input type="text" id="search-startDate" class="form-control" name="search-checkin" style="height:40px; font-size:15px;" required="required"/>
		</div>
	</div>
	</div>
	
	<!--check out  -->
	<div style="width: 200px; height:20px;float: left;">	
    <div class="form-group" >
		<span class="glyphicon glyphicon-calendar"  style="font-size: 14px;">체크아웃</span>
		<div id="datepicker2" style="padding-top:10px;">
		 <input type="text" id="search-endDate" class="form-control" name="search-checkout" style="height:40px; font-size:15px;" required="required"/>
		</div>
	</div>
    <button id="" type="submit" class="hy-air-mainSearchBtn" style="float: left; position: absolute;right:600; top: 0px; background-color:#FF5A5F;text-align: center; text-decoration: none;cursor: pointer; border: none; color: white; padding:7px;  border-radius: 3px;">검색</button>
</div>
	
	
	<!-- navbar menu  -->
</div>
<div style="height:41px; margin: 0 90%;float: left;">
	<nav>
			<ul class="hy-navbar-ul">
					<li><a id="mainHost">호스팅하기</a></li>
					<li><a id="mainHelp">도움말</a></li>
				    <li><a id="mainJoin">회원가입</a></li>
					<li><a id="mainLogin">로그인</a></li>
					<li><a id="mainProfile">프로필가기</a></li>
			</ul>
	   </nav>
</div>
</div>
</div>
</div>
</body>
<script>
$( "#search-startDate" ).datepicker({
    dateFormat: "yy-mm-dd",
    dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
    monthNames: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
    monthNamesShort: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
    defaultDate: "+1w",
    numberOfMonths: 1,
    changeMonth: true,
    showMonthAfterYear: true ,
    changeYear: true,
    onClose: function( selectedDate ) {
        $( "#search-endDate" ).datepicker( "option", "minDate", selectedDate );
    }
});

$("#search-startDate").datepicker({
    dateFormat: "yy-mm-dd",
    defaultDate: "+1w",
    numberOfMonths: 1,
    changeMonth: true,
    showMonthAfterYear: true ,
    changeYear: true,
    onClose: function( selectedDate ) {
        if ($( "#search-endDate" ).val() < selectedDate)
        {
            $( "#search-endDate" ).val(selectedDate);
        }
    }
});

$("#search-endDate").datepicker({
    dateFormat: "yy-mm-dd",
    dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
    monthNames: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
    monthNamesShort: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
    defaultDate: "+1w",
    numberOfMonths: 1,
    changeMonth: true,
    showMonthAfterYear: true ,
    changeYear: true,
    onClose: function( selectedDate ) {
        $( "#search-startDate" ).datepicker( "option", "maxDate", selectedDate );
    }
});
$( "#search-endDate" ).datepicker({
    dateFormat: "yy-mm-dd",
    defaultDate: "+1w",
    numberOfMonths: 1,
    changeMonth: true,
    showMonthAfterYear: true ,
    changeYear: true,
    onClose: function( selectedDate ) {
        if ($("#search-startDate" ).val() > selectedDate)
        {
            $("#search-startDate" ).val(selectedDate);
        }
    }
});
</script>
</html>