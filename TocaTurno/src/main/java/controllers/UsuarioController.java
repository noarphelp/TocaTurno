package controllers;

import entities.Usuario;
import persistences.GenericoJPA;


import java.util.List;


public class UsuarioController {

    private final GenericoJPA<Usuario, Long> usuarioJPA;

    public UsuarioController() {
        this.usuarioJPA = new GenericoJPA<>(Usuario.class);
    }
    //Mét*odo para crear un nuevo usuario en la base de datos ,recibe usuario y lo guarda en jpa
    public void crearUsuario(Usuario usuario) {
        usuarioJPA.create(usuario);

    }
    // met*do para buscar lista de todos los usuarios
    public List<Usuario> findAll() {
        return usuarioJPA.findAll();
    }
    // met*odo buscaro por ID
    public Usuario findById(Long id) {
        return usuarioJPA.findById(id);

    }


}