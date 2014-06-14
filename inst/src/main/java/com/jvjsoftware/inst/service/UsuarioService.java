package com.jvjsoftware.inst.service;

import java.util.List;

import com.jvjsoftware.inst.domain.Rol;
import com.jvjsoftware.inst.domain.Usuario;

public interface UsuarioService {
	
	public List<Usuario> listaUsuarios();
	
	public List<Usuario> busqueda(String username, Integer estado);
	
	public void guardaUsuario(Usuario usuario);
	
	public Usuario buscarPorId(Integer id);
	
	public Usuario session(String username);
	
	public Integer eliminarUsuario(Integer idUsuario) throws Exception;
	
	public Integer campoUnicoUsername(String username);

	List<Rol> rolesPorUsuario(Usuario usuario);
	

}
