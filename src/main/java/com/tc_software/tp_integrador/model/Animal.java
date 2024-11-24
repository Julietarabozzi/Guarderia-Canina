package com.tc_software.tp_integrador.model;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Animal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String tutor;
    private String categoria;
    private String contacto;
    private String fechaNacimiento;

    // Constructors
    public Animal() {
    }

    public Animal(String tutor, String categoria, String contacto, String fechaNacimiento) {
        this.tutor = tutor;
        this.categoria = categoria;
        this.contacto = contacto;
        this.fechaNacimiento = fechaNacimiento;

    }

    // Getters y Setters
    public Long getId() {
        return id;
    }

    public String getTutor() {
        return tutor;
    }

    public void setTutor(String tutor) {
        this.tutor = tutor;
    }
    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public String getContacto() {
        return contacto;
    }

    public void setContacto(String contacto) {
        this.contacto = contacto;
    }


    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
}

