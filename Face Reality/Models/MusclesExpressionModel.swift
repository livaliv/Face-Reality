//
//  MusclesEmotionsModel.swift
//  Face Reality
//
//  Created by mvitoriapereirac on 21/08/23.
//

import Foundation

protocol MusclesExpression {
    var expressionName: String { get set }
    var muscleName: String { get set }
    var muscleDescription: String { get set }
}

struct Muscle: Hashable {
    let expression: String
    let muscleName: String
    let muscleDescription: String
}

struct SmileMuscles  {
    let muscles: [Muscle] = [Muscle(expression: "Sorriso", muscleName:"Músculo zigomático maior", muscleDescription: "Este é o principal músculo envolvido no sorriso. Ele se estende das maçãs do rosto até os cantos da boca e é responsável por levantar os lábios, criando as famosas \"covinhas\" quando sorrimos."),
                             Muscle(expression: "Sorriso", muscleName: "Músculo orbicular dos olhos", muscleDescription: "Também conhecido como músculo orbicular dos olhos, este músculo circunda os olhos e está envolvido na formação das rugas ao redor dos olhos, comumente conhecidas como \"pés de galinha\"."),
                             Muscle(expression: "Sorriso", muscleName: "Músculo levantador do lábio superior", muscleDescription: "Este músculo está localizado logo abaixo do nariz e é responsável por levantar o lábio superior durante um sorriso"),
                             Muscle(expression: "Sorriso", muscleName: "Músculo risório", muscleDescription: "Localizado nas laterais do rosto, o músculo risório ajuda a puxar os cantos da boca para trás e para cima, contribuindo para o sorriso."),
                             Muscle(expression: "Sorriso", muscleName: "Músculo bucinador", muscleDescription: "Localizado nas bochechas, o músculo bucinador é responsável por contrair as bochechas durante um sorriso, ajudando a criar a aparência de bochechas rosadas e salientes.")]
}


struct GenuineSmileMuscles {
    let muscles: [Muscle] = [Muscle(expression: "Sorriso genuíno", muscleName: "Músculo zigomático menor", muscleDescription: "Situado abaixo do músculo zigomático maior, ajuda a levantar o lábio superior e a expor os dentes superiores ao sorrir." ),
                             Muscle(expression: "Sorriso genuíno", muscleName: "Músculo levantador do ângulo da boca", muscleDescription: "Localizado ao lado do risório, ajuda a levantar os cantos da boca durante um sorriso."),
                             Muscle(expression: "Sorriso genuíno", muscleName: "Músculo depressor do ângulo da boca", muscleDescription: "Este músculo está localizado abaixo dos cantos da boca e pode ser ativado em conjunto com outros músculos para criar uma expressão sutilmente diferente em certos tipos de sorrisos.")]
}

struct AngerMuscles {
    let muscles: [Muscle] = [Muscle(expression: "Raiva", muscleName: "Músculo corrugador superciliar", muscleDescription: "Localizado acima das sobrancelhas, este músculo se contrai e franz as sobrancelhas para baixo e em direção ao centro do rosto, criando linhas verticais entre as sobrancelhas, conhecidas como \"rugas da testa\"."),
                             Muscle(expression: "Raiva", muscleName: "Músculo prócero", muscleDescription: "Está localizado entre as sobrancelhas e se contrai durante a expressão da raiva, ajudando a produzir as rugas horizontais na ponte do nariz, também chamadas de \"linhas de preocupação\"."),
                             Muscle(expression: "Raiva", muscleName: "Músculo frontal", muscleDescription: "Este músculo se estende pela testa e é responsável por levantar as sobrancelhas, especialmente nas porções laterais, durante a expressão de surpresa ou raiva intensa."),
                             Muscle(expression: "Raiva", muscleName: "Músculo corrugador do supercílio", muscleDescription: "Localizado na região da testa, logo acima do canto interno das sobrancelhas, esse músculo é ativado durante a expressão de raiva e ajuda a franzir a testa e abaixar as sobrancelhas."),
                             Muscle(expression: "Raiva", muscleName: "Músculos orbiculares dos olhos", muscleDescription: "Também ativados na expressão da raiva, esses músculos circundam os olhos e podem se contrair, criando as famosas \"linhas de expressão\" ou \"pés de galinha\"."),
                             Muscle(expression: "Raiva", muscleName: "Músculos zigomáticos menores", muscleDescription: "Estes músculos são ativados quando a pessoa mostra os dentes ou retrai os lábios para trás, o que pode ocorrer durante a expressão de raiva intensa."),
                             Muscle(expression: "Raiva", muscleName: "Músculo levantador do lábio superior", muscleDescription: "Este músculo, localizado abaixo do nariz, pode se contrair durante a expressão de raiva, especialmente quando a pessoa mostra os dentes."),
                             Muscle(expression: "Raiva", muscleName: "", muscleDescription: "Este músculo, localizado abaixo do nariz, pode se contrair durante a expressão de raiva, especialmente quando a pessoa mostra os dentes."),
                             Muscle(expression: "Raiva", muscleName: "Músculo levantador do ângulo da boca", muscleDescription: "Localizado ao lado do risório, este músculo pode se contrair durante a expressão de raiva, contribuindo para uma aparência de lábios apertados.")
    ]
}

struct SurpriseMuscles {
    let muscles: [Muscle] = [Muscle(expression: "Espanto", muscleName: "Músculo levantador do lábio superior", muscleDescription: "Este músculo, localizado abaixo do nariz, se contrai para elevar o lábio superior, criando uma abertura maior dos lábios e uma expressão de surpresa."),
                            Muscle(expression: "Espanto", muscleName: "Músculo frontal", muscleDescription: "O músculo frontal se estende pela testa e é responsável por levantar as sobrancelhas, especialmente nas porções centrais, durante a expressão de espanto."),
                            Muscle(expression: "Espanto", muscleName: "Músculo prócero", muscleDescription: "Localizado entre as sobrancelhas, este músculo pode se contrair e produzir rugas horizontais na ponte do nariz durante a expressão de espanto."),
                            Muscle(expression: "Espanto", muscleName: "Músculo orbicular dos olhos", muscleDescription: "Os músculos orbiculares dos olhos podem se contrair durante o espanto, levando a uma abertura ampla dos olhos, também conhecida como \"olhos arregalados\".te do nariz durante a expressão de espanto."),
                            Muscle(expression: "Espanto", muscleName: "Músculo elevador da pálpebra superior", muscleDescription: "Este músculo é responsável por levantar a pálpebra superior e também contribui para a abertura ampla dos olhos durante o espanto."),
                            Muscle(expression: "Espanto", muscleName: "Músculos zigomáticos menores", muscleDescription: "Localizados próximos aos cantos da boca, esses músculos podem se contrair durante o espanto, contribuindo para uma aparência de boca aberta e lábios tensos."),
                            Muscle(expression: "Espanto", muscleName: "Músculo risório", muscleDescription: "O músculo risório, situado nas laterais do rosto, pode se contrair durante o espanto, auxiliando na abertura dos lábios."),

    ]
}

struct DisgustMuscles {
    let muscles: [Muscle] = [Muscle(expression: "Nojo", muscleName: "Músculo levantador do lábio superior", muscleDescription: "Este músculo, localizado abaixo do nariz, pode se contrair durante a expressão de nojo, levantando o lábio superior e enrugando o nariz."),
                            Muscle(expression: "Nojo", muscleName: "Músculo depressor do ângulo da boca", muscleDescription: "Localizado abaixo dos cantos da boca, esse músculo pode se contrair durante o nojo, puxando os cantos da boca para baixo."),
                            Muscle(expression: "Nojo", muscleName: "Músculos nasolabiais", muscleDescription: "Estes músculos se estendem dos lados do nariz até os cantos da boca e se contraem durante a expressão de nojo, criando uma aparência de \"nariz torcido\"."),
                            Muscle(expression: "Nojo", muscleName: "Músculo prócero", muscleDescription: "O músculo prócero, localizado entre as sobrancelhas, pode se contrair durante o nojo, causando rugas verticais na testa."),
                            Muscle(expression: "Nojo", muscleName: "Músculo orbicular dos olhos", muscleDescription: "Os músculos orbiculares dos olhos podem se contrair durante o nojo, levando a uma diminuição do tamanho dos olhos e rugas ao redor deles."),
                            Muscle(expression: "Nojo", muscleName: "Músculo levantador do ângulo da pálpebra superior", muscleDescription: "Este músculo eleva a pálpebra superior e pode se contrair durante o nojo, contribuindo para uma aparência de olhos mais abertos. ")
    ]
}

struct SadnessMuscles {
    let muscles: [Muscle] = [Muscle(expression: "Tristeza", muscleName: "Músculo depressor do lábio inferior", muscleDescription: "Este músculo, localizado abaixo dos lábios, se contrai durante a expressão de tristeza, puxando os cantos da boca para baixo."),
                            Muscle(expression: "Tristeza", muscleName: "Músculo levantador do lábio superior", muscleDescription: "Localizado abaixo do nariz, esse músculo pode se contrair durante a tristeza, levando a um ligeiro levantamento do lábio superior."),
                            Muscle(expression: "Tristeza", muscleName: "Músculo corrugador superciliar", muscleDescription: "O músculo corrugador superciliar está localizado acima das sobrancelhas e se contrai durante a tristeza, produzindo rugas verticais na testa, entre as sobrancelhas."),
                            Muscle(expression: "Tristeza", muscleName: "Músculo prócero", muscleDescription: "Este músculo, entre as sobrancelhas, pode se contrair durante a tristeza, criando rugas horizontais na ponte do nariz."),
                            Muscle(expression: "Tristeza", muscleName: "Músculos orbiculares dos olhos", muscleDescription: "EOs músculos orbiculares dos olhos podem se contrair durante a tristeza, levando a uma aparência de olhos caídos ou \"olhos tristes\"."),
                            Muscle(expression: "Tristeza", muscleName: "Músculo risório", muscleDescription: "O músculo risório, nas laterais do rosto, pode se contrair durante a tristeza, contribuindo para uma aparência de lábios esticados ou puxados para trás."),
                            Muscle(expression: "Tristeza", muscleName: "Músculos zigomáticos menores", muscleDescription: "Estes músculos estão próximos aos cantos da boca e podem se contrair durante a tristeza, produzindo uma expressão de lábios apertados."),
                            Muscle(expression: "Tristeza", muscleName: "Músculo levantador do ângulo da pálpebra superior", muscleDescription: "Este músculo pode se contrair durante a tristeza, levando a uma leve elevação da pálpebra superior, resultando em uma aparência de olhos mais abertos.")
    ]
}

struct HappinessMuscle: MusclesExpression {
    var expressionName: String = "Sorriso genuíno"
    var muscleName: String = "Músculo zigomático maior"
    
    var muscleDescription: String = "Este é o principal músculo envolvido no sorriso. Ele se estende das maçãs do rosto até os cantos da boca e é responsável por levantar os lábios, criando as famosas \"covinhas\" quando sorrimos. "
    
    
}
