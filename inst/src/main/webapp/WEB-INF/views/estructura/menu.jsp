<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>

        <div class="leftmenu">        
            <ul class="nav nav-tabs nav-stacked">
            <li class="nav-header"> Menu Principal </li>
            
				<li><a href=""><span class="icon-home"></span> Inicio</a></li>    
				
				
				<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SEGURIDAD','ROLE_SEGURIDAD_USUARIOS','ROLE_SEGURIDAD_PERFILES','ROLE_SEGURIDAD_ROLES')">        
				<li class="dropdown"> <a href="#" >
				<span class="icon-user"></span>Seguridad</a> 
            	<ul class="subMenu">
            	
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SEGURIDAD_USUARIOS')">
            		<li><a href="#" id="menuUsuarios">Usuarios</a></li>
            		</sec:authorize>
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SEGURIDAD_PERFILES')">
            		<li><a href="#" id="menuPerfiles">Perfiles</a></li>
            		 </sec:authorize>
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SEGURIDAD_ROLES')">
            		<li><a href="#" id="menuRoles">Roles</a></li>
            		</sec:authorize>
            		</ul>
            	</li>
            	</sec:authorize>
            	
            	
            	<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO','ROLE_MANTEMIENTO_ENTIDADDOCUMENTO',
            	'ROLE_MANTEMIENTO_TIPOPRODUCTO','ROLE_MANTEMIENTO_MATERIAPRIMA','ROLE_MANTEMIENTO_TIPOMATERIAPRIMA',
            	'ROLE_MANTEMIENTO_PROCESOPRODUCCION','ROLE_MANTEMIENTO_TIPOARCHIVO', 'ROLE_MANTEMIENTO_UNIDADMEDIDA',
            	'ROLE_MANTEMIENTO_CARGOORGANIZACIONAL','ROLE_MANTEMIENTO_AREA',		'ROLE_MANTEMIENTO_ESTADOS',)">
            	<li class="dropdown"> <a href="#" > <span class="icon-wrench"></span>Mantenimiento</a> 
            	
            	<ul class="subMenu">
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_ENTIDADDOCUMENTO')">
                              <li><a href="#" id="menuTipoDocumento">Tipo Entidad Documento</a></li>
                        </sec:authorize>
            		
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_TIPOPRODUCTO')">
                              <li><a href="#" id="menuTipoProducto">Tipo de Producto</a></li>
                        </sec:authorize>
            		
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_MATERIAPRIMA')">
                              <li><a href="#" id="menuMateriaPrima">Materia Prima</a></li>
                        </sec:authorize>
            		
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_TIPOMATERIAPRIMA')">
                              <li><a href="#" id="menuTipoMateriaPrima">Tipo Materia Prima</a></li>
                        </sec:authorize>
            		
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_PROCESOPRODUCCION')">
                              <li><a href="#" id="menuTipoManoObra">Proceso de Produccion</a></li>
                        </sec:authorize>
            		
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_TIPOARCHIVO')">
                              <li><a href="#" id="menuTipoArchivo">Tipo Archivo</a></li>
                        </sec:authorize>
            		
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_UNIDADMEDIDA')">
                              <li><a href="#" id="menuMedida">Unidad de Medida</a></li>
                        </sec:authorize>
            		
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_CARGOORGANIZACIONAL')">
                              <li><a href="#" id="menuCargo">Cargo Organizacional</a></li>
                        </sec:authorize>
            		
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_AREA')">
                              <li><a href="#" id="menuTipoArea">Area</a></li>
                        </sec:authorize>
            		
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_ESTADOS')">
                              <li><a href="#" id="menuEstado">Estado</a></li>
                        </sec:authorize>
                        
                        
                        <!-- 
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_EMPRESA')">
                              <li><a href="#" id="menuEmpresa">Empresa Origen</a></li>
                        </sec:authorize>
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_BANCO')">
                              <li><a href="#" id="menuBanco">Banco</a></li>
                        </sec:authorize>
                        <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANTEMIENTO_TIPOCUENTA')">
                              <li><a href="#" id="menuTipoCuenta">Tipo de Cuenta</a></li>
                        </sec:authorize>
                         -->
                        
            	</ul>
            	
            	</li>
            	</sec:authorize>
            	
            	<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_VENTA','ROLE_VENTA_CLIENTE','ROLE_VENTA_PRODUCTO','ROLE_VENTA_ORDENPEDIDO','ROLE_VENTA_PROYECTO')">
            	<li class="dropdown"> <a href="#" > <span class="icon-shopping-cart"></span>Ventas</a> 
            	
            	<ul class="subMenu">
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_VENTA_CLIENTE')">
            		<li><a href="#" id="menuInformacionCliente">Informacion del Cliente</a></li>
            		</sec:authorize>
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_VENTA_PRODUCTO')">
            		<li><a href="#" id="menuProductoPorCliente">Producto por Cliente</a></li>
            		</sec:authorize>
            		
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_VENTA_PROYECTO')">
            		<li><a href="#" id="menuProyectoPorCliente">Proyecto por Cliente</a></li>
            		</sec:authorize>
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_VENTA_ORDENPEDIDO')">
            		<li><a href="#" id="menuPedidoCliente">Orden Pedido Cliente</a></li>
            		</sec:authorize>
            		
            		
            	</ul>
            	</li>
            	
            	
            	</sec:authorize>
            	<!-- Compras -->
            	
            	<!-- 
            	<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_COMPRAS')">
            	<li class="dropdown"> <a href="#" > <span class="icon-leaf"></span>Compras</a> 
            	
            	<ul class="subMenu">
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_COMPRAS_PROVEEDOR')">
            		<li><a href="#" id="menuComprasProveedor">Proveedor</a></li>
            		</sec:authorize>
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_COMPRAS_ORDENCOMPRA')">
            		<li><a href="#" id="menuComprasOrdenCompra">Orden de Compra</a></li>
            		</sec:authorize>
            	</ul>
            	</li>
            	</sec:authorize>
            	 -->
            	
            	<!-- Almacen  -->
            	
            	
            	<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_ALMACEN')">
            	<li class="dropdown"> <a href="#" > <span class="icon-leaf"></span>Almacen</a> 
            	
            	<ul class="subMenu">
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_ALMACEN_MOVIMIENTO_MATERIAPRIMA')">
            		<li><a href="#" id="menuMovimientoMateriaPrima">Materia Prima - Registro de Movimientos</a></li>
            		</sec:authorize>
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_ALMACEN_MOVIMIENTO_PRODUCTO')">
            		<li><a href="#" id="menuMovimientoProducto">Producto Terminado - Registro de Movimientos</a></li>
            		</sec:authorize>
            	</ul>
            	</li>
            	</sec:authorize>
            	
            	
            	
            	
            	
            	<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_PRODUCCION')">
            	<li class="dropdown"> <a href="#" > <span class="icon-leaf"></span>Producción</a> 
            	
            	<ul class="subMenu">
            		<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_PRODUCCION_ORDENPEDIDO')">
            		<li><a href="#" id="menuProduccionOrdenPedido">Orden de Pedido</a></li>
            		</sec:authorize>
            	</ul>
            	</li>
            	</sec:authorize>
            	
            		  <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_PERSONAL')">
            		<li class="dropdown">
            			<a href="#" > 
            				<span class="icon-user"></span>Personal
            			</a> 
            			<ul class="subMenu">
            				<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_PERSONAL_EMPLEADO')">
            					<li><a href="#" id="menuPersonalEmpleado">Administracion del Personal</a></li>
            				</sec:authorize>
            			</ul>
            		</li>
            	</sec:authorize>
            	
            	
            	<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_REPORTE','ROLE_REPORTE_ORDENPEDIDO_PORPRODUCTO','ROLE_REPORTE_ORDENPEDIDO_PORMATERIAPRIMA','ROLE_REPORTE_PRODUCTO_ANALISIS')">
            	<li class="dropdown"> <a href="#" > <span class="icon-print"></span>Reportes Ventas</a> 
            	
            	<ul class="subMenu">
            		<sec:authorize	access="hasAnyRole('ROLE_ADMIN','ROLE_REPORTE_PRODUCTO_ANALISIS')">
            		<li><a href="#" id="menuReporteAnalisisProducto">Analisis de Costos del Producto</a></li>
            		</sec:authorize>
            		<sec:authorize	access="hasAnyRole('ROLE_ADMIN','ROLE_REPORTE_ORDENPEDIDO_PORMATERIAPRIMA')">
            		<li><a href="#" id="menuReporteOrdenPedidoMateriaPrima">Requerimiento de M. Prima segun OP</a></li>
            		</sec:authorize>
            		<sec:authorize	access="hasAnyRole('ROLE_ADMIN','ROLE_REPORTE_ORDENPEDIDO_PORPRODUCTO')">
            		<li><a href="#" id="menuReporteOrdenPedidoProducto">Requerimiento de M. Prima segun Producto</a></li>
            		</sec:authorize>

            	</ul>
            	</li>
            	
            	
            	</sec:authorize>
            	
            	
            	<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_REPORTEALMACEN','ROLE_REPORTEALMACEN_MOVIMIENTOMP','ROLE_REPORTEALMACEN_MOVIMIENTOMPSALDO')">
            	<li class="dropdown"> <a href="#" > <span class="icon-print"></span>Reportes Almacen</a> 
            	
            	<ul class="subMenu">
            		<sec:authorize	access="hasAnyRole('ROLE_ADMIN','ROLE_REPORTEALMACEN_MOVIMIENTOMP')">
            		<li><a href="#" id="menuReporteMovimientoMP">Materia Prima - Movimientos</a></li>
            		</sec:authorize>
            		<sec:authorize	access="hasAnyRole('ROLE_ADMIN','ROLE_REPORTEALMACEN_MOVIMIENTOMPSALDO')">
            		<li><a href="#" id="menuReporteMovimientoTMP">Materia Prima - Saldos</a></li>
            		</sec:authorize>
					<sec:authorize	access="hasAnyRole('ROLE_ADMIN','ROLE_REPORTEALMACEN_PRODUCTO')">
            		<li><a href="#" id="menuReporteMovimientoP">Producto Terminado - Movimientos</a></li>
            		</sec:authorize>
            		<sec:authorize	access="hasAnyRole('ROLE_ADMIN','ROLE_REPORTEALMACEN_PRODUCTOSALDO')">
            		<li><a href="#" id="menuReporteMovimientoPS">Producto Terminado - Saldos</a></li>
            		</sec:authorize>
            	</ul>
            	</li>
            	</sec:authorize>
            	                        	
            </ul>
        </div>