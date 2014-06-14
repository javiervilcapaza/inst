
function abrir(ruta) {
		window.open(ruta,"abrir","scrollbars=yes,status=yes,toolbar=no,menubar=no,location=no,directories=no,resizable=yes,top=60,left=100");
	}

function onlyNumbersDano(evt)
{
  var keyPressed = (evt.which) ? evt.which : event.keyCode;
  return !(keyPressed > 31 && (keyPressed < 48 || keyPressed > 57 || keyPressed == 47));
}

function check_digit(e,obj,intsize,deczize)
{

    var keycode;

    if (window.event) keycode = window.event.keyCode;
    else if (e) keycode = e.which;
    else return true; 
  var fieldval= (obj.value);
var dots = fieldval.split(".").length;

if(keycode == 46)
    {
if(dots > 1){

return false;
}else{

return true;
}
    }
    if(keycode == 8 || keycode == 9 || keycode == 46 || keycode == 13 ) // back space, tab, delete, enter 
    {
        return true;
    }          
    if((keycode>=32 && keycode <=45) || keycode==47   || (keycode>=58 && keycode<=127))
    {
         return false;
    }


//alert(jQuery(fieldval:contains('.').length));




 if(fieldval == "0" && keycode == 48 )
   return false;
   //alert(fieldval.indexOf(".") + ' - '+ fieldval.length);
 if(fieldval.indexOf(".") != -1)
  { 
  if(keycode == 46)
   return false;
   var splitfield = fieldval.split(".");


   //alert('Spilt -> '+ splitfield[1].length);
   if(splitfield[1].length >= deczize && keycode != 8 && keycode != 0 )
   return false;
  }
  else if(fieldval.length >= intsize && keycode != 46)
  {
    return false;
  } 
  else return true;   
}

function currency(value, decimals, separators) {
    decimals = decimals >= 0 ? parseInt(decimals, 0) : 2;
    separators = separators || [',', "'", '.'];
    var number = (parseFloat(value) || 0).toFixed(decimals);
    if (number.length <= (4 + decimals))
        return number.replace('.', separators[separators.length - 1]);
    var parts = number.split(/[-.]/);
    value = parts[parts.length > 1 ? parts.length - 2 : 0];
    var result = value.substr(value.length - 3, 3) + (parts.length > 1 ?
        separators[separators.length - 1] + parts[parts.length - 1] : '');
    var start = value.length - 6;
    var idx = 0;
    while (start > -3) {
        result = (start > 0 ? value.substr(start, 3) : value.substr(0, 3 + start))
            + separators[idx] + result;
        idx = (++idx) % 2;
        start -= 3;
    }
    return (parts.length == 3 ? '-' : '') + result;
}



$(function(){

		
	var baseURL;
	baseURL = $("#baseURL").val();
	

	$("#menuPrincipal").accordion({
		navigation : true,
		heightStyle: "content"
	});

	/* NavegaciÃ³n */
	$("#menuConfiguraciones").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "administracion", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);

		});
	});
	
	
	
	$("#menuUsuarios").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "seguridad/usuario/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento de Usuario - Lista");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuPerfiles").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "seguridad/perfil/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento de Perfil - Lista");

		});
	});
	
	$("#menuRoles").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "seguridad/rol/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento de Rol - Lista");

		});
	});
	
	$("#menuArea").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "seguridad/area/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento de Area - Lista");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuInformacionCliente").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "venta/cliente/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Informacion del Cliente - Lista");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuProductoPorCliente").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "venta/producto/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Producto por Cliente - Lista");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	/*Mantenimiento*/
	$("#menuTipoDocumento").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarTiposDocumentos", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Tipo Entidad Documento - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuManoObra").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarManosObras", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Mano de Obra - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuTipoManoObra").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarTiposManosObras", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Proceso de Produccion - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuTipoProducto").click(function() {
		//alert("aqui");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarTiposProductos", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Tipo de Producto - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	

	$("#menuTipoArchivo").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarTiposArchivos", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Tipo de Archivo - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuMedida").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarUnidadesMedidas", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Unidad de Medida - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuTipoMateriaPrima").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarTiposMateriasPrimas", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Tipo de Materia Prima - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuEstado").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarEstados", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Estado - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuTipoArea").click(function() {
		//alert("area");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarAreas", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Area - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuCargo").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarCargos", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Cargo Organizacional - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuMateriaPrima").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarMateriasPrimas", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Materia Prima - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuEmpresa").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarEmpresa", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Empresa Origen - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	$("#menuBanco").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarBanco", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Banco - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuTipoCuenta").click(function() {
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "mantenimientoInterno/listarTipoCuenta", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Mantenimiento Tipo de Cuenta - Listado");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
/*Orden Pedido Cliente*/
	
	$("#menuPedidoCliente").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "ventas/listaOrdenPedido", function(respuesta, textStatus, jqXHR) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Orden de Pedido Cliente - Lista");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	
	$("#menuProyectoPorCliente").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "venta/proyecto/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Proyecto por Cliente - Lista");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
		
	});
	
	
	/*Reporte*/
	$("#menuReporteAnalisisProducto").click(function() {
		$("#contenidoPrincipal").html("Cargando...");
		baseURL = $("#baseURL").val();
		$.get(baseURL + "/reporte/producto/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Reporte - Ventas : Análisis de Costos del Producto");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuReporteOrdenPedidoMateriaPrima").click(function() {
		$("#contenidoPrincipal").html("Cargando...");
		baseURL = $("#baseURL").val();
		$.get(baseURL + "/reporte/ordenpedido/lista?reporte=OP-PorMateriaPrima", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Reporte - Ventas : Reporte de Requerimiento de Materia Prima según OP");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuReporteOrdenPedidoProducto").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		baseURL = $("#baseURL").val();
		$.get(baseURL + "/reporte/ordenpedido/lista?reporte=OP-PorProducto", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Reporte - Ventas : Reporte de Requerimiento de Materia Prima según Producto");

		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	/* Compras */
	
	$("#menuComprasProveedor").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "compras/proveedor/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Proveedor - Listado");
		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	$("#menuComprasOrdenCompra").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "compras/orden/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Orden de Compra - Listado");
		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	
	/*Almacen */
	$("#menuMovimientoMateriaPrima").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "almacen/movimiento/materiaPrima/index", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Materia Prima - Registro de Movimientos");
		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	$("#menuMovimientoProducto").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "almacen/movimiento/producto/index", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Productos Terminados - Registro de Movimientos");
		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});
	
	/*Producccion*/
	
	$("#menuProduccionOrdenPedido").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "produccion/listaOrdenPedido", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Produccion - Orden de Pedido");
		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});	
	
	/*Personal*/
	
	$("#menuPersonalEmpleado").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "personalController/lista", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Administracion del Personal - Listado");
		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});	

	
	/*Reporte Almacen*/
	
	$("#menuReporteMovimientoMP").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "reporte/movimiento/materiaPrima/busqueda", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Reporte - Almacen : Movimientos de Materia Prima");
		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});	
	$("#menuReporteMovimientoTMP").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "reporte/movimiento/tipoMateriaPrima/busqueda", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Reporte - Almacen : Saldos de Materia Prima ");
		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});		
	$("#menuReporteMovimientoP").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "reporte/movimiento/producto/busqueda", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Reporte - Almacen : Movimientos de Productos Terminados");
		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});			
	$("#menuReporteMovimientoPS").click(function() {
		$("#contenidoPrincipal").html("");
		$("#contenidoPrincipal").html("Cargando . . .");
		$.get(baseURL + "reporte/movimiento/productoSaldo/busqueda", function(respuesta) {
			$("#contenidoPrincipal").html(respuesta);
			$("#title-page").html("Reporte - Almacen : Saldo de Productos Terminados");
		}).fail(function() {
			$("#contenidoPrincipal").html("No se ha podido visualizar esta pagina");
		});
	});	
});