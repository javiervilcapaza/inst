package com.jvjsoftware.inst.service;

import java.util.List;

import com.jvjsoftware.inst.domain.Perfil;

public interface PerfilService {

	public List<Perfil> listaPerfiles();
	
	public List<Perfil> busqueda(String nombrePerfil, String estado);
	
	public void guardaPerfil(Perfil perfil);
	
	public Perfil buscarPorId(Integer id);
	
	public Perfil perfilConRoles(Integer id);
	
	public Integer eliminarPerfil(Integer idPerfil) throws Exception;
	
	public Integer campoUnicoNombrePerfil(String nombrePerfil);
}
