//
//  main.swift
//  PokemonEver
//
//  Created by Turma Manhã on 08/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

/*Defina um struct Pokemon que guarda algumas informações relevantes de um pokemon:
- nome
- tipo (um ou dois)
- pontos de HP totais
- pontos de HP atuais
- uma lista de ataques, que incluem um nome e um dano básico
Um pokemon deve ser capaz de verificar se outro pokemon tem um tipo em comum com ele e deve ser capaz de atacar outro pokemon com um determinado ataque, infligindo dano no pokemon atacado.*/

struct Pokemon {
    var nome:String
    var tipo:String
    var hpTotal:Double
    var hpAtual:Double
    var ataque:Ataque
    
    var ataques:[Ataque] = [Ataque(), Ataque(), Ataque(), Ataque()]
    
    func tipoPokemon (_ outro:Pokemon) -> Bool {
        if self.tipo == outro.tipo {
            return true
        }
        else {
            return false
        }
    }
    
}

struct Ataque {
    var nome:String
    var dano:Double
}



