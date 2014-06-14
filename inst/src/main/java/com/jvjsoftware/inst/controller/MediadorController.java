package com.jvjsoftware.inst.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
@RequestMapping("")
public class MediadorController {
 
	@RequestMapping
	public String principal(Locale locale, Model model ) {
		
		DateFormat d=DateFormat.getDateInstance(DateFormat.FULL);
		model.addAttribute("hoy",d.format(new Date()));
		
		return "principal";
	}
	
	@RequestMapping(value="usuario")
	public String getUserPage() {
		return "usuario";
	}
	
	@RequestMapping(value="/administracion")
	public String getAdminPage() {
		return "administracion";
	}
	
	@RequestMapping(value="/ventas")
	public String ventasPage() {
		return "ventas";
	}
	
	@RequestMapping(value="/logistica")
	public String logisticaPage() {
		return "logistica";
	}
	
	
}