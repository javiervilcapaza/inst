package com.jvjsoftware.inst.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jvjsoftware.inst.dao.PerfilDAO;
import com.jvjsoftware.inst.domain.Perfil;
import com.jvjsoftware.inst.domain.Rol;
import com.jvjsoftware.inst.domain.Usuario;

@Service("PerfilService")
public class PerfilServiceImpl implements PerfilService {

	@Autowired
	private PerfilDAO perfilDAO;
	
	
	@Override
	public List<Perfil> listaPerfiles() {
		return perfilDAO.getTodos();
	}


	@Override
	public Perfil buscarPorId(Integer id) {
		return perfilDAO.get(id);
	}
	
	@Override
	@Transactional(readOnly = true)
	public Perfil perfilConRoles(Integer id) {
		
		
		Perfil perfil = perfilDAO.get(id);
		
		//Para que debuelva perfiles con roles asignados 
		
		for (Rol rol : perfil.getRol()) {
			System.out.println(rol.getNombreRol());
			
		}
		return  perfil;
	}

	@Override
	public List<Perfil> busqueda(String nombrePerfil, String estado) {
		return perfilDAO.buscaPerfil(nombrePerfil, estado);
	}
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void guardaPerfil(Perfil perfil) {
		perfilDAO.guardar(perfil);
		
	}


	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public Integer eliminarPerfil(Integer idPerfil) throws Exception {
		
		Perfil perfil = buscarPorId(idPerfil);
		
		try {
			return perfilDAO.eliminar(perfil);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new Exception("SE REFERENCIA DESDE OTRA TABLA");

		}
	}


	@Override
	public Integer campoUnicoNombrePerfil(String nombrePerfil) {
		return perfilDAO.campoUnicoNombrePerfil(nombrePerfil);
	}

}
