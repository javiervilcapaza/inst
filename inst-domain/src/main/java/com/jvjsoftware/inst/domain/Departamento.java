package com.jvjsoftware.inst.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import com.btg.dao.entidad.Entidad;

@Entity
public class Departamento implements Entidad {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="departamento_d_id_seq")
    @SequenceGenerator(name="departamento_d_id_seq", sequenceName="departamento_d_id_seq", allocationSize=1)
	@Column(name= "d_id")
	private Integer id;
	
	private String d_descripcion;

	

	@Override
	public String getLabel() {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	public String getD_descripcion() {
		return d_descripcion;
	}

	public void setD_descripcion(String d_descripcion) {
		this.d_descripcion = d_descripcion;
	}
	

	
}
