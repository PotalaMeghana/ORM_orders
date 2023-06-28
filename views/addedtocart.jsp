<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  user-select: none;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
html,body{
  height: 100%;
}
body{
  display: grid;
  place-items: center;
  overflow: hidden;
}
button{
  padding: 8px 16px;
  font-size: 25px;
  font-weight: 500;
  border-radius: 4px;
  border: none;
  outline: none;
  background: #e69100;
  color: white;
  letter-spacing: 1px;
  cursor: pointer;
}
.alert{
  background: #ffdb9b;
  padding: 20px 40px;
  min-width: 420px;
  position: absolute;
  right: 0;
  top: 10px;
  border-radius: 4px;
  border-left: 8px solid #ffa502;
  overflow: hidden;
  opacity: 0;
  pointer-events: none;
}
.alert.showAlert{
  opacity: 1;
  pointer-events: auto;
}
.alert.show{
  animation: show_slide 1s ease forwards;
}
@keyframes show_slide {
  0%{
    transform: translateX(100%);
  }
  40%{
    transform: translateX(-10%);
  }
  80%{
    transform: translateX(0%);
  }
  100%{
    transform: translateX(-10px);
  }
}
.alert.hide{
  animation: hide_slide 1s ease forwards;
}
@keyframes hide_slide {
  0%{
    transform: translateX(-10px);
  }
  40%{
    transform: translateX(0%);
  }
  80%{
    transform: translateX(-10%);
  }
  100%{
    transform: translateX(100%);
  }
}
.alert .fa-exclamation-circle{
  position: absolute;
  left: 20px;
  top: 50%;
  transform: translateY(-50%);
  color: #ce8500;
  font-size: 30px;
}
.alert .msg{
  padding: 0 20px;
  font-size: 18px;
  color: #ce8500;
}
.alert .close-btn{
  position: absolute;
  right: 0px;
  top: 50%;
  transform: translateY(-50%);
  background: #ffd080;
  padding: 20px 18px;
  cursor: pointer;
}
.alert .close-btn:hover{
  background: #ffc766;
}
.alert .close-btn .fas{
  color: #ce8500;
  font-size: 22px;
  line-height: 40px;
}
</style>
<script>
$('button').click(function(){
	  $('.alert').addClass("show");
	  $('.alert').removeClass("hide");
	  $('.alert').addClass("showAlert");
	  setTimeout(function(){
	    $('.alert').removeClass("show");
	    $('.alert').addClass("hide");
	  },5000);
	});
	$('.close-btn').click(function(){
	  $('.alert').removeClass("show");
	  $('.alert').addClass("hide");
	});
</script>
</head>
<body>
<button>Show Alert</button>
<div class="alert hide">
  <span class="fas fa-exclamation-circle"></span>
  <span class="msg">Product added to cart�</span>
  <div class="close-btn">
    <span class="fas fa-times"></span>
  </div>
</div>
</body>
</html>