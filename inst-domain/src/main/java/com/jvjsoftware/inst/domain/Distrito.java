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
public class Distrito implements Entidad {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="distrito_d_id_seq")
    @SequenceGenerator(name="distrito_d_id_seq", sequenceName="distrito_d_id_seq", allocationSize=1)
	@Column(name= "d_id")
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "d_provincia_id")
	private Provincia provincia;
	
	private String d_descripcion;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Provincia getProvincia() {
		return provincia;
	}

	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}

	public String getD_descripcion() {
		return d_descripcion;
	}

	public void setD_descripcion(String d_descripcion) {
		this.d_descripcion = d_descripcion;
	}

	@Override
	public String getLabel() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
