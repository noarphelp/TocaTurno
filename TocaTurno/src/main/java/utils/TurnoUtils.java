package utils;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

// EN ESTA CLASE UTILS TENEMOS EL METODO QUE NOS VA A GENERAR EL IDENTIFICADOR PROGRESIVO A PARTIR DE LA FECHA Y HORA
//DE LA CITA CREADA .   yyyyMMddHHmmss → formato: 20250530145530
public class TurnoUtils {

    public static Long generarIdentificador(LocalDateTime fecha) {

        String fechaStr = fecha.format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));
        return Long.parseLong(fechaStr);
    }
}
