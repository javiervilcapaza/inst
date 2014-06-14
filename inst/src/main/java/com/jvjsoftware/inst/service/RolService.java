package com.jvjsoftware.inst.service;

import java.util.List;

import com.jvjsoftware.inst.domain.Rol;

public interface RolService {
	
	public List<Rol> listaRoles();
	
	public List<Rol> busqueda(String nombreRol);
	
	public void guardaRol(Rol rol);
	
	public Rol buscarPorId(Integer id);
	
	public Integer eliminarRol(Integer idRol) throws Exception;
	
	public Integer campoUnicoNombreRol(String nombreRol);

	List<Rol> buscaPorDependencia(Integer dependencia);

}
