package entities;

import jakarta.persistence.*;
import utils.TurnoUtils;

import java.time.LocalDateTime;

//ESTA ES LA CLASE DONDE DECLARAMOS LOS ATRIBUTOS DE UN TURNO, CON SUS CONSTRUCTORES Y GETTERS AND SETTERS .
@Entity
@Table(name = "turno")
public class Turno {

    //HACEMOS QUE EL ID SE GENERE AUTOMATICAMENTE
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long identificador;
    @Column(nullable = false)
    private LocalDateTime fecha;
    @Column(nullable = false, length = 100)
    private String descripcion;
    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Estado estado;

    //AQUI DECLARAMOS LA RELACION QUE VA A TENER TURNOS CON USUARIO EN LA BASE DE DATOS.
    @JoinColumn(nullable = false)
    @ManyToOne()
    private Usuario usuario;

    public Turno() {
    }

    public Turno(LocalDateTime fecha, String descripcion, Estado estado, Usuario usuario) {
        this.fecha = fecha;
        this.descripcion = descripcion;
        this.estado = estado;
        this.usuario = usuario;
        this.identificador = TurnoUtils.generarIdentificador(fecha);
    }

    //quitamos setters de id y de identificador porque no queremos que se puedan modificar esos valores.
    public Long getId() {
        return id;
    }


    public Long getIdentificador() {
        return identificador;
    }


    public LocalDateTime getFecha() {
        return fecha;
    }

    public void setFecha(LocalDateTime fecha) {
        this.fecha = fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }


}
