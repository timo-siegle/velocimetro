//: Un velocímetro de un automóvil digital

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    
    init() {
        velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() ->  (actual : Int, velocidadEnCadena: String) {
        
        var velocidadEnCadena: String
        switch velocidad {
            case Velocidades.Apagado:
                velocidad = Velocidades.VelocidadBaja
                velocidadEnCadena = "Velocidad Baja"
            case Velocidades.VelocidadBaja:
                velocidad = Velocidades.VelocidadMedia
                velocidadEnCadena = "Velocidad Media"
            case Velocidades.VelocidadMedia:
                velocidad = Velocidades.VelocidadAlta
                velocidadEnCadena = "Velocidad Alta"
            case Velocidades.VelocidadAlta:
                velocidad = Velocidades.VelocidadMedia
                velocidadEnCadena = "Velocidad Media"
        }
        return (velocidad.rawValue, velocidadEnCadena)
    }
}

var auto = Auto()
for index in 1...20 {
    let result = auto.cambioDeVelocidad()
        print("\(result.actual), \(result.velocidadEnCadena)")
}