//: Un velocímetro de un automóvil digital

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
    var descripción : String {
        switch self {
            case Apagado: return "Apagado";
            case VelocidadBaja: return "Velocidad Baja";
            case VelocidadMedia: return "Velocidad Media";
            case VelocidadAlta: return "Velocidad Alta";
        }
    }
}

class Auto {
    var velocidad: Velocidades
    
    init() {
        velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() ->  (actual : Int, velocidadEnCadena: String) {
        
        let actualVelocidad = velocidad
        switch velocidad {
            case .Apagado:
                velocidad = Velocidades.VelocidadBaja
            case .VelocidadBaja:
                velocidad = Velocidades.VelocidadMedia
            case .VelocidadMedia:
                velocidad = Velocidades.VelocidadAlta
            case .VelocidadAlta:
                velocidad = Velocidades.VelocidadMedia
        }
        return (actualVelocidad.rawValue, actualVelocidad.descripción)
    }
}

var auto = Auto()
for index in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(result.actual), \(result.velocidadEnCadena)")
}