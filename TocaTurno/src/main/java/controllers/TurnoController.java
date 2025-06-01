package controllers;

import entities.Estado;
import entities.Turno;
import persistences.GenericoJPA;

import java.util.List;
import java.util.stream.Collectors;

// EN ESTA CLASE SE IMPLEMENTA TODA LA LOGICA PARA TURNOS

public class TurnoController {

    private GenericoJPA<Turno, Long> genericoJPA;

    public TurnoController() {
        this.genericoJPA = new GenericoJPA<>(Turno.class);

    }

    //METODO PARA TRAER LA LISTA DE TURNOS
    public List<Turno> findAll() {

        return genericoJPA.findAll();
    }

    //METODO PARA LISTAR TODOS LOS TURNOS POR ESTADO
    public List<Turno> findEstado(Estado estado) {
        try {
            List<Turno> list = genericoJPA.findAll();

            return list.stream().filter(e -> e.getEstado().equals(estado)).collect(Collectors.toList());
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}
