<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

 body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .navbar a.active {
            background-color: #4CAF50;
            color: white;
        }
        .navbar-right {
            float: right;
        }
       </style>
       
       
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="navbar">
    <a class="active" href="index.jsp">Home</a>
    <a href="form.jsp">Register</a>
    <a href="login.jsp">Profile</a>
    <div class="navbar-right">
        <a href="login.jsp">Log In</a>
        <a href="#signup">Sign Up</a>
    </div>
</div>

<div class="owl-carousel owl-theme">
        <div class="item" style="padding-top: 50px">
<img alt="" src="https://img.freepik.com/free-vector/hand-drawn-remote-recruitment-illustration_52683-143681.jpg?w=740&t=st=1724130531~exp=1724131131~hmac=f3fe5290eb524f757ba079342d981747e6b0c5d0cb624f43bfede7a88b0f5237" height="600px">
</div>
       <div class="item"> <img alt="" src="https://img.freepik.com/free-vector/remote-management-distant-work-isometric-icons-composition-with-bearded-man-sitting-with-laptop-calendar_1284-63057.jpg?w=740&t=st=1724130451~exp=1724131051~hmac=a78845b1dce9fad298ae7dfc6fc581d75a2bb330d3411113dcd47e1f23d60cea" height="600px">  </div>
        <div class="item"> <img alt="" src="https://img.freepik.com/free-vector/hand-drawn-remote-recruitment-illustration_52683-144094.jpg?w=740&t=st=1724130614~exp=1724131214~hmac=472b3dfeff499ea4b4c2c575da2e5840c2e0880f98c3f07043df9b984d43c149" height="600px"> </div>
    </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Owl Carousel 2 JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>  
<script type="text/javascript">

$(document).ready(function(){
    $('.owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        autoplay:true,
        autoplayTimeout:3000,
        nav:true,
        dots:false,
        nav:false,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:1
            }
        }
    });
});

</script>  
</body>
</html>