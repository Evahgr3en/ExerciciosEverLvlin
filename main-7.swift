//
//  main.swift
//  ProtocolEstudoEver
//
//  Created by Turma Manhã on 08/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation



//Faça com que Retangulo e Circulo também estejam em conformidade com Forma.


protocol Forma {
    func area() -> Double
    func igual(_ outro:Forma) -> Bool
    func incluiPonto(_ ponto:Point) -> Bool
    //func incluiForma(_ outra:Forma) -> Bool
    mutating func mover(x:Double, y:Double)
}

struct Point:Forma {
    var x:Double
    var y:Double
    
    func area( ) -> Double {
        
    }
    
    func distancia(de outro:Point) -> Double {
        var diffX = self.x - outro.x
        var diffY = self.y - outro.y
        var sumSqs = diffX*diffX + diffY*diffY
        return sqrt(sumSqs)
    }
    func igual(_ outro: Forma) -> Bool {
        if outro is Point {
            let pto = outro as! Point
            return self.x == pto.x && self.y == pto.y
        } else {
            return false
        }

    }
    
    func incluiPonto(_ ponto:Point) -> Bool {
        return self.x <= ponto.x && self.y <= ponto.y
    }
    
    mutating func mover(x:Double, y:Double) {
        self.x += x
        self.y += y
    }
    
}

struct Retangulo:Forma {
    
    var ladoUm:Double
    var ladoDois:Double
    var pontoCentro: Point
    
    //calcular a área do retângulo
    func area( ) -> Double {
        let areaResult = self.ladoUm * self.ladoDois
        return areaResult
    }
    
    //verificar se dois retângulos são iguais
    func igual (_ outro:Forma) -> Bool {
        let retangulo = outro as! Retangulo
        if self.ladoUm == retangulo.ladoUm && self.ladoDois == retangulo.ladoDois {
            return true
        }
        else {
            return false
        }
    }
    
    //Essa função deve verificar se, dado um ponto, esse ponto está dentro ou fora da superfície da forma geométrica.
    func incluiPonto(_ ponto:Point) -> Bool {
        return ladoUm <= ponto.x && ladoDois <= ponto.y
    }
    
    //Essa função deve verificar se a forma recebida como argumento está inclusa na forma alvo da função.
    
   /* func incluiForma(_ outra:Forma) -> Bool {
        if outra is Retangulo {
            let retangulo = outra as! Retangulo
            if self.ladoUm <= retangulo.ladoUm && self.ladoDois <= retangulo.ladoDois && self.pontoCentro.igual(a: retangulo.pontoCentro) {
                return true
            }
            
        }
        
        else {
            if outra is circulo {
                let circulo = outra as! circulo
                if self
            }
        }
        
    }*/
    
    mutating func mover(x: Double, y: Double) {
       self.pontoCentro.x += x
       self.pontoCentro.y += y
        
    }
    
}
    

struct circulo:Forma {
    var raio: Double
    var centro:Point
    
    
    func area() -> Double {
        let areaResult = 3.14 * raio * raio
        return areaResult
    }
    
    func igual(_ outro: Forma) -> Bool {
        var outro = outro as! circulo
        return self.raio == outro.raio
            && self.centro.igual(outro.centro)
    }
    
    func incluiPonto(_ ponto:Point) -> Bool {
        return ponto.x <= raio && ponto.y <= raio
        
    }
    
   /* func incluiForma(_ outra:Forma) -> Bool {
        
    }*/
    
    mutating func mover(x: Double, y: Double) {
        self.centro.x += x
       self.centro.y += y
    }

}


