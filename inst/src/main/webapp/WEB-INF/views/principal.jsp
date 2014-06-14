
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page
	import="org.springframework.security.core.context.SecurityContextHolder"%>

<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Mundo Moda</title>
<link rel="stylesheet" href="resources/css/style.default.css"
	type="text/css" />
<link rel="stylesheet" href="resources/prettify/prettify.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/jquery.ui.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/jquery.ui.theme.css"
	type="text/css" />



<script type="text/javascript"
	src="<c:url value="/resources/prettify/prettify.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/scripts/plantilla/jquery-1.8.3.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/scripts/plantilla/jquery-ui.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/scripts/plantilla/jquery.flot.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/scripts/plantilla/jquery.flot.resize.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/scripts/plantilla/bootstrap.min.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/scripts/plantilla/custom.js"/>"></script>
<!--[if lte IE 8]><script language=" value="/resources/javascript" type="text/javascript" src="js/excanvas.min.js"></script><![endif]-->

<script src="<c:url value="/resources/scripts/principal.js"/>"></script>
<script src="<c:url value="/resources/scripts/ajaxupload.js" />"></script>	

</head>

<body>

	<div class="mainwrapper">

		<input type="hidden" id="baseURL" value="<c:url value='/' />" />

		<!-- START OF LEFT PANEL -->
		<div class="leftpanel">

			<div class="logopanel">
				<h1>
					<a href="#">MundoModa<span> </span></a>
				</h1>
			</div>
			<!--logopanel-->


			<!--searchwidget
        <div class="datewidget">${hoy}</div>
    
    	<div class="searchwidget">
        	<form action="#" method="post">
            	<div class="input-append">
                    <input type="text" class="span2 search-query" placeholder="Buscar...">
                    <button type="submit" class="btn"><span class="icon-search"></span></button>
                </div>
            </form>
        </div>-->

			<!--  
        
        <div class="plainwidget">
        	<small>Using 16.8 GB of your 51.7 GB </small>
        	<div class="progress progress-info">
                <div class="bar" style="width: 20%"></div>
            </div>
            <small><strong>38% full</strong></small>
        </div><!--plainwidget-->

			<!--leftmenu-->

			<jsp:include page="estructura/menu.jsp" />



		</div>
		<!--mainleft-->
		<!-- END OF LEFT PANEL -->

		<!-- START OF RIGHT PANEL -->
		<div class="rightpanel">
			<div class="headerpanel">
				<a href="#" class="showmenu"></a>

				<div class="headerright">
				<!--	<div class="dropdown notification">
						<a class="dropdown-toggle" data-toggle="dropdown" data-target="#"
							href="http://themepixels.com/page.html"> <span
							class="iconsweets-globe iconsweets-white"></span>
						</a>
						<ul class="dropdown-menu">
							<li class="nav-header">Notifications</li>
							<li><a href="#"> <strong>3 people viewed your
										profile</strong><br /> <img src="resources/img/thumbs/thumb1.png"
									alt="" /> <img src="resources/img/thumbs/thumb2.png" alt="" />
									<img src="resources/img/thumbs/thumb3.png" alt="" />
							</a></li>
							<li><a href="#"><span class="icon-envelope"></span> New
									message from <strong>Jack</strong> <small class="muted">
										- 19 hours ago</small></a></li>
							<li><a href="#"><span class="icon-envelope"></span> New
									message from <strong>Daniel</strong> <small class="muted">
										- 2 days ago</small></a></li>
							<li><a href="#"><span class="icon-user"></span> <strong>Bruce</strong>
									is now following you <small class="muted"> - 2 days ago</small></a></li>
							<li class="viewmore"><a href="#">View More Notifications</a></li>
						</ul>
					</div>
					<!--dropdown-->

					<div class="dropdown userinfo">
						<a class="dropdown-toggle" data-toggle="dropdown" data-target="#"
							href="#">Hola, <%=SecurityContextHolder.getContext().getAuthentication()
					.getName()%>! <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#"><span class="icon-edit"></span>
									Editar Perfil</a></li>
							<li><a href="#"><span class="icon-wrench"></span>
									Configuracion de cuenta</a></li>
							<li class="divider"></li>
							<li><a href="logout"><span class="icon-off"></span>
									Salir</a></li>
						</ul>
					</div>
					<!--dropdown-->

				</div>
				<!--headerright-->

			</div>
			<!--headerpanel-->
			<div class="breadcrumbwidget">
				<div class="fechaActualPlantilla">
				
				
				<%@ page import="java.util.*" %>
				<%@ page import="java.text.SimpleDateFormat"%>
 
<%   Date dNow = new Date();
	SimpleDateFormat formateador = new SimpleDateFormat("dd 'de' MMMM 'de' yyyy", new Locale("es_ES"));
   String currentDate = formateador.format(dNow);
%>

Lima, <%=currentDate %>

</div>
				<!--skins-->
				<ul class="breadcrumb">
					<li><a href="#">Inicio</a> <span class="divider">/</span></li>

				</ul>
			</div>
			<!--breadcrumbs-->
			<div class="pagetitle">
				<h1 id="title-page">Principal</h1>
				<span></span>
			</div>
			<!--pagetitle-->

			<div class="maincontent">
				<div class="contentinner content-dashboard">

					<!-- -
            	<div class="alert alert-info">
                	<button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>Welcome!</strong> This alert needs your attention, but it's not super important.
                </div><!--alert-->

					<div class="row-fluid" id="contenidoPrincipal">
						<div class="span8">
							<ul class="widgeticons row-fluid">
								<li class="one_fifth"><a href="#"><img
										src="resources/img/gemicon/location.png" alt="" /><span>Compras</span></a></li>
								<li class="one_fifth"><a href="#"><img
										src="resources/img/gemicon/image.png" alt="" /><span>Ventas</span></a></li>
								<li class="one_fifth"><a href="#"><img
										src="resources/img/gemicon/reports.png" alt="" /><span>Reportes</span></a></li>
								<li class="one_fifth"><a href="#"><img
										src="resources/img/gemicon/edit.png" alt="" /><span>Productos</span></a></li>
								<li class="one_fifth last"><a href="#"><img
										src="resources/img/gemicon/mail.png" alt="" /><span>Notificaciones</span></a></li>
								<li class="one_fifth"><a href="#"><img
										src="resources/img/gemicon/calendar.png" alt="" /><span>Eventos</span></a></li>
								<li class="one_fifth"><a href="#"><img
										src="resources/img/gemicon/users.png" alt="" /><span>Seguridad</span></a></li>
								<li class="one_fifth"><a href="#"><img
										src="resources/img/gemicon/settings.png" alt="" /><span>Configuracion</span></a></li>
								<li class="one_fifth"><a href="#"><img
										src="resources/img/gemicon/archive.png" alt="" /><span>Produccion</span></a></li>
								<li class="one_fifth last"><a href="#"><img
										src="resources/img/gemicon/notify.png" alt="" /><span>Web</span></a></li>
							</ul>

							<br />



						</div>
						<!--span8-->
						<div class="span4">

							<!-- 
                    	<h4 class="widgettitle nomargin">Some Simple Instructions</h4>
                        <div class="widgetcontent bordered">
                        	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        </div><!--widgetcontent-->

							<h4 class="widgettitle nomargin">Calendario</h4>
							<div class="widgetcontent">
								<div id="calendar" class="widgetcalendar"></div>
							</div>
							<!--widgetcontent-->

							<!--
                        
                        <h4 class="widgettitle">Site Impressions</h4>
                        <div class="widgetcontent">
                        	<div id="bargraph2" style="height:200px;"></div>
                        </div><!--widgetcontent-->



						</div>
						<!--span4-->
					</div>
					<!--row-fluid-->
				</div>
				<!--contentinner-->
			</div>
			<!--maincontent-->

		</div>
		<!--mainright-->
		<!-- END OF RIGHT PANEL -->

		<div class="clearfix"></div>

		<div class="footer">
			<div class="footerleft">Mundo Moda System v 0.1</div>
			<div class="footerright">
				&copy; JV - <a href="http://btg.com.pe">BTG</a>
			</div>
		</div>
		<!--footer-->


	</div>
	<!--mainwrapper-->


	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-header">
			<button class="close" type="button" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel">Modal Mundo Moda</h3>
		</div>
		<div class="modal-body"></div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal">Cerrar</button>
		</div>
	</div>


	<script type="text/javascript">
		jQuery(document).ready(
				function() {

					// basic chart
					var flash = [ [ 0, 2 ], [ 1, 6 ], [ 2, 3 ], [ 3, 8 ],
							[ 4, 5 ], [ 5, 13 ], [ 6, 8 ] ];
					var html5 = [ [ 0, 5 ], [ 1, 4 ], [ 2, 4 ], [ 3, 1 ],
							[ 4, 9 ], [ 5, 10 ], [ 6, 13 ] ];

					function showTooltip(x, y, contents) {
						jQuery(
								'<div id="tooltip" class="tooltipflot">'
										+ contents + '</div>').css({
							position : 'absolute',
							display : 'none',
							top : y + 5,
							left : x + 5
						}).appendTo("body").fadeIn(200);
					}

					// calendar
					jQuery('#calendar').datepicker();

				});
	</script>
</body>
</html>
