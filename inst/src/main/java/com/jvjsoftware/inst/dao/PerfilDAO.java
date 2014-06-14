package com.jvjsoftware.inst.dao;

import java.util.List;

import com.btg.dao.dao.IDAO;
import com.jvjsoftware.inst.domain.Perfil;
import com.jvjsoftware.inst.domain.Rol;

public interface PerfilDAO extends IDAO<Perfil> {
	
	
	List<Perfil> buscaPerfil(String nombrePerfil, String estado);
	Integer eliminar(Perfil perfil) throws Exception;
	Integer campoUnicoNombrePerfil(String nombrePerfil);
	
}
