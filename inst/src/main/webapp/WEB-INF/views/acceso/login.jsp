<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Mundo Moda Sys - Login</title>
<link rel="stylesheet" href="resources/css/style.default.css" type="text/css" />
<script type="text/javascript" src="<c:url value="/resources/scripts/plantilla/jquery-1.8.3.min.js"/>"></script>
</head>

<body class="loginbody">

<div class="loginwrapper">
	<div class="loginwrap zindex100 animate2 bounceInDown">
	<h1 class="logintitle"><span class="iconfa-lock"></span> <spring:message code="label.inicioSesion"/><span class="subtitle">Bienvenido ! Inicia sesion con tu cuenta de usuario!</span></h1>
        <div class="loginwrapperinner">
        <p class="message" style="color:#fff">
        <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION.message}">
        <c:if test="${SPRING_SECURITY_LAST_EXCEPTION.message=='User is disabled'}">
            El usuario est&aacute; deshabilitado
        </c:if>
        <c:if test="${SPRING_SECURITY_LAST_EXCEPTION.message=='Bad credentials'}">
            Nombre de Usuario o Clave no existen
        </c:if>
        </c:if>
</p>
            <form id="loginform" action="j_spring_security_check" method="post" target="_parent">
                <p class="animate4 bounceIn"><input type="text" id="username" name="j_username" placeholder="<spring:message code="label.inicioSesion.nombreUsuario"/>" /></p>
                <p class="animate5 bounceIn"><input type="password" id="password" name="j_password" placeholder="<spring:message code="label.inicioSesion.clave"/>" /></p>
                <p class="animate6 bounceIn"><button class="btn btn-default btn-block"><spring:message code="label.inicioSesion.enviar"/></button></p>
                <p class="animate7 fadeIn"><a href="#"><span class="icon-question-sign icon-white"></span> Olvido su clave?</a></p>
            </form>
        </div><!--loginwrapperinner-->
    </div>
    <div class="loginshadow animate3 fadeInUp"></div>
</div><!--loginwrapper-->

<script type="text/javascript">
jQuery(document).ready(function(){
	
	var anievent = (jQuery.browser.webkit)? 'webkitAnimationEnd' : 'animationend';
	jQuery('.loginwrap').bind(anievent,function(){
		jQuery(this).removeClass('animate2 bounceInDown');
	});
	
	jQuery('#username,#password').focus(function(){
		if(jQuery(this).hasClass('error')) jQuery(this).removeClass('error');
	});
	
	jQuery('#loginform button').click(function(){
		if(!jQuery.browser.msie) {
			if(jQuery('#username').val() == '' || jQuery('#password').val() == '') {
				if(jQuery('#username').val() == '') jQuery('#username').addClass('error'); else jQuery('#username').removeClass('error');
				if(jQuery('#password').val() == '') jQuery('#password').addClass('error'); else jQuery('#password').removeClass('error');
				jQuery('.loginwrap').addClass('animate0 wobble').bind(anievent,function(){
					jQuery(this).removeClass('animate0 wobble');
				});
			} else {
				jQuery('.loginwrapper').addClass('animate0 fadeOutUp').bind(anievent,function(){
					jQuery('#loginform').submit();
				});
			}
			return false;
		}
	});
});
</script>
</body>
</html>




<!-- -

<html>
<head>
	<link rel="stylesheet" type="text/css" media="screen" href="resources/css/style.css"/>
	<title>Login</title>
</head>

<body>
	<form class="login-form" action="j_spring_security_check" method="post" >
		<fieldset>
			<legend>Iniciar Sesion</legend>
			
			<p>
			<label for="j_username">Username</label>:
			<input id="j_username" name="j_username" size="20" maxlength="50" type="text"/>
			</p>
			
			<p>
			<label for="j_password">Password</label>:
			<input id="j_password" name="j_password" size="20" maxlength="50" type="password"/>
			</p>
			
			<p><input type="submit" value="Login"/></p>
		</fieldset>
	</form>
	<p class="message">${message}</p>
</body>
</html>

 -->