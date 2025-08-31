
object luke {
    var vehiculo = alambiqueVeloz
    const lugaresVisitados = []
    var recuerdoActual = null

    method cambiarVehiculo(unVehiculo) {
        vehiculo = unVehiculo
    }

    method viajarA(unLugar) {
        if (unLugar.puedeSerVisitadoCon(vehiculo)) {
            vehiculo.viajar()
            lugaresVisitados.add(unLugar)
            recuerdoActual = unLugar.recuerdo()
        }
    }

    method cantidadDeLugaresVisitados() = lugaresVisitados.size()

    method ultimoRecuerdo() = recuerdoActual
}


object alambiqueVeloz {
    var combustible = 50

    method viajar() { combustible = combustible - 10 }

    method tieneCombustible() = combustible >= 10

    method esRapido() = false
}

object superChatarraEspecial {
    var municiones = 5

    method viajar() { municiones = municiones - 1 }

    method tieneCombustible() = municiones > 0

    method esRapido() = true
}

object antiguaBlindada {
    var gangsters = 3

    method viajar() { gangsters = gangsters - 1 }

    method tieneCombustible() = gangsters > 0

    method esRapido() = gangsters <= 1   
}

object paris {
    method recuerdo() = "llavero Torre Eiffel"
    method puedeSerVisitadoCon(unVehiculo) = unVehiculo.tieneCombustible()
}

object buenosAires {
    method recuerdo() = "mate con yerba"
    method puedeSerVisitadoCon(unVehiculo) = unVehiculo.esRapido()
}

object bagdad {
    method recuerdo() = "réplica jardines colgantes"
    method puedeSerVisitadoCon(unVehiculo) = true
}

object lasVegas {
    const homenaje = paris   

    method recuerdo() = homenaje.recuerdo()
    method puedeSerVisitadoCon(unVehiculo) = homenaje.puedeSerVisitadoCon(unVehiculo)
}

object tokyo {
    method recuerdo() = "muñeco de Totoro"
    method puedeSerVisitadoCon(unVehiculo) = unVehiculo.tieneCombustible() && unVehiculo.esRapido()
}
