package controllers;

import entities.Usuario;
import persistences.GenericoJPA;


import java.util.List;
import java.util.Optional;

public class UsuarioController {

    private final GenericoJPA<Usuario, Long> usuarioJPA;

    public UsuarioController() {
        this.usuarioJPA = new GenericoJPA<>(Usuario.class);
    }

    public void crearUsuario(String nombre, String apellido, String email, String edad) {
        Usuario nuevoUsuario = new Usuario();
        nuevoUsuario.setNombre(nombre);
        nuevoUsuario.setApellido(apellido);
        nuevoUsuario.setEmail(email);
        nuevoUsuario.setEdad(edad);

        usuarioJPA.create(nuevoUsuario);
    }

    public List<Usuario> findAll() {
        return usuarioJPA.findAll();
    }

    public Usuario findById(Long id) {
        return usuarioJPA.findById(id);

    }

    public List<Usuario> filterUsuarios(String palabraBuscada) {
        List<Usuario> listado = usuarioJPA.findAll();

        return listado.stream()
                .filter(usuario -> usuario.getNombre().toLowerCase().contains(palabraBuscada.toLowerCase()) ||
                        usuario.getApellido().toLowerCase().contains(palabraBuscada.toLowerCase()))
                .toList();
    }
}
