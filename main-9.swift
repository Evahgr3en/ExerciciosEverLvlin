//
//  main.swift
//  FuncStructEver
//
//  Created by Turma Manhã on 08/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

/*Defina um struct Retangulo que guarda os dois lados de um retângulo e um Ponto correspondente ao seu centro. Essa struct deve incluir funções para:
 - calcular a área do retângulo;
 - verificar se dois retângulos são iguais; e
 - calcular a distância entre tal retângulo e um ponto qualquer.*/

struct Point {
    var x:Double
    var y:Double
    
    func distancia(de outro:Point) -> Double {
        var diffX = self.x - outro.x
        var diffY = self.y - outro.y
        var sumSqs = diffX*diffX + diffY*diffY
        return sqrt(sumSqs)
    }
    func igual(a outro:Point) -> Bool {
        return self.x == outro.x && self.y == outro.y
    }
}

struct Retangulo {
    var ladoUm:Double
    var ladoDois:Double
    var pontoCentro: Point
    
    //calcular a área do retângulo
    func areaRect( ) -> Double {
        let areaResult = self.ladoUm * self.ladoDois
        return areaResult
    }
    
    //verificar se dois retângulos são iguais
    func igualdade (_ outro:Retangulo) -> Bool {
        if self.ladoUm == outro.ladoUm && self.ladoDois == outro.ladoDois {
            return true
        }
        else {
            return false
        }
    }
    
    //calcular a distância entre tal retângulo e um ponto qualquer.
    
    func distancia (outro:Point) -> Double {
      let distPonto = outro.distancia(de: self.pontoCentro)
        return distPonto
    }
    
}

var ponto = Point(x: 5.0, y: 4.0)
var retangulo = Retangulo(ladoUm: 10.0, ladoDois: 20.0, pontoCentro:ponto)



print(retangulo.distancia(outro: ponto))

