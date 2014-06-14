package com.jvjsoftware.inst.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import com.btg.dao.entidad.Entidad;

@Entity
public class Provincia implements Entidad {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="provincia_p_id_seq")
    @SequenceGenerator(name="provincia_p_id_seq", sequenceName="provincia_p_id_seq", allocationSize=1)
	@Column(name= "p_id")
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "p_departamento_id")
	private Departamento departamento;
	
	private String p_descripcion;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Departamento getDepartamento() {
		return departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

	public String getP_descripcion() {
		return p_descripcion;
	}

	public void setP_descripcion(String p_descripcion) {
		this.p_descripcion = p_descripcion;
	}

	@Override
	public String getLabel() {
		// TODO Auto-generated method stub
		return null;
	}
}
