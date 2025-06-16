package controllers;


import entities.Turno;
import enums.Estado;
import persistences.GenericoJPA;

import java.time.LocalDate;
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

    //METODO PARA GUARDAR UN NUEVO TURNO
    public void crete(Turno turno){

        try {
            if (turno != null)
                genericoJPA.create(turno);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    //METODO PARA LISTAR TODOS LOS TURNOS POR FECHA
    public List<Turno> findFecha(LocalDate fecha) {

        try {
            List<Turno> lista = genericoJPA.findAll();
            return lista.stream()
                    .filter(t -> t.getFecha().toLocalDate().equals(fecha))
                    .collect(Collectors.toList());
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}