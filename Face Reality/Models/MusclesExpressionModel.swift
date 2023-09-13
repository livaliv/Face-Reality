//
//  MusclesEmotionsModel.swift
//  Face Reality
//
//  Created by mvitoriapereirac on 21/08/23.
//

import Foundation

struct Muscle: Hashable {
    let expression: String
    let muscleName: String
    let muscleDescription: String
    let muscleIllustrationName: String
}

struct SmileMuscles  {
    let muscles: [Muscle] = [Muscle(expression: "Sorriso", muscleName: "Músculo orbicular do olho", muscleDescription: "Esse músculo divide-se em 3 partes: \n  Orbital: fecha as pálpebras com firmeza; \n  Palpebral externa: fecha pálpebras suavemente; \n  Profunda: comprime o saco lacrimal.\n Ele é ativado somente no sorriso genuíno.", muscleIllustrationName: "orbicularOlho"),
                             Muscle(expression: "Sorriso", muscleName: "Músculo levantador do lábio superior e asa do nariz", muscleDescription: "Eleva o lábio superior, expõe os dentes maxilares.", muscleIllustrationName: "levantadorLabioAsaNariz"),
                             Muscle(expression: "Sorriso", muscleName: "Músculo levantador do lábio superior", muscleDescription: "Eleva o lábio superior, expõe os dentes maxilares.", muscleIllustrationName: "levantadorLabio"),
                             Muscle(expression: "Sorriso", muscleName: "Músculo zigomático maior", muscleDescription: "Tem função de elevação e eversão do ângulo da boca.", muscleIllustrationName: "zigomaticoMaior"),
                             Muscle(expression: "Sorriso", muscleName: "Músculo zigomático menor", muscleDescription: "Tem a função de elevar o lábio juntamente com o músculo Levantador do lábio superior e asa do nariz.", muscleIllustrationName: "zigomaticoMenor"),
                             Muscle(expression: "Sorriso", muscleName: "Músculo risório", muscleDescription: "Tem função de estender o ângulo da boca lateralmente.", muscleIllustrationName: "risorio"),
                             Muscle(expression: "Sorriso", muscleName: "Músculo levantador do ângulo da boca", muscleDescription: "Tem a função de elevar o ângulo da boca e acentua o sulco nasolabial.", muscleIllustrationName: "levantadorAnguloBoca"),
                             Muscle(expression: "Sorriso", muscleName: "Músculo orbicular da boca", muscleDescription: "Tem a função de realizar o movimento de fechamento da boca, comprimir e alongar os lábios.", muscleIllustrationName: "orbicularBoca"),
                             Muscle(expression: "Sorriso", muscleName: "Músculo bucinador", muscleDescription: "Esse músculo tem a função de comprimir as bochechas contra os dentes molares.", muscleIllustrationName: "bucinador"),
                             Muscle(expression: "Sorriso", muscleName: "Músculo depressor do ângulo da boca", muscleDescription: "Tem função de deprimir o ângulo da boca.", muscleIllustrationName: "depressorAnguloBoca")]
}

struct AngerMuscles {
    let muscles: [Muscle] = [Muscle(expression: "Raiva", muscleName: "Músculo occipitofrontal", muscleDescription: "Tem a função de elevar as sobrancelhas e enrugar a pele da testa, enquanto a da parte occipital é retrair o couro cabeludo.", muscleIllustrationName: "frontal"),
                             Muscle(expression: "Raiva", muscleName: "Músculo corrugador do supercílio", muscleDescription: "Tem a função de criar rugas verticais sobre a glabela; é responsável por tracionar a sobrancelha medialmente.", muscleIllustrationName: "corrugadorSupercilio"),
                             Muscle(expression: "Raiva", muscleName: "Músculo prócero", muscleDescription: "O músculo tem a função de rebaixar a extremidade medial da sobrancelha e enrugar a pele da glabela.", muscleIllustrationName: "procero"),
                             Muscle(expression: "Raiva", muscleName: "Músculo orbicular do olho", muscleDescription: "Esse músculo divide-se em 3 partes: \n  Orbital: fecha as pálpebras com firmeza; \n  Palpebral externa: fecha pálpebras suavemente; \n  Profunda: comprime o saco lacrimal.\n Ele é ativado somente no sorriso genuíno.", muscleIllustrationName: "orbicularOlho"),
                             Muscle(expression: "Raiva", muscleName:"Músculo zigomático maior", muscleDescription: "Tem função de elevação e eversão do ângulo da boca.", muscleIllustrationName: "zigomaticoMaior"),
                             Muscle(expression: "Raiva", muscleName: "Músculo zigomático menor", muscleDescription: "Tem a função de elevar o lábio juntamente com o músculo levantador do lábio superior e asa do nariz.", muscleIllustrationName: "zigomaticoMenor"),
                             Muscle(expression: "Raiva", muscleName: "Músculo levantador do lábio superior e asa do nariz", muscleDescription: "Eleva o lábio superior, expõe os dentes maxilares.", muscleIllustrationName: "levantadorLabioAsaNariz"),
                             Muscle(expression: "Raiva", muscleName: "Músculo levantador do lábio superior", muscleDescription: "Eleva o lábio superior, expõe os dentes maxilares.", muscleIllustrationName: "levantadorLabio"),
                             Muscle(expression: "Raiva", muscleName: "Músculo levantador do ângulo da boca", muscleDescription: "Tem a função de elevar o ângulo da boca e acentua o sulco nasolabial.", muscleIllustrationName: "levantadorAnguloBoca")]
}

struct SurpriseMuscles {
    let muscles: [Muscle] = [Muscle(expression: "Espanto", muscleName: "Músculo occipitofrontal", muscleDescription: "Tem a função de elevar as sobrancelhas e enrugar a pele da testa, enquanto a da parte occipital é retrair o couro cabeludo.", muscleIllustrationName: "frontal"),
                             Muscle(expression: "Espanto", muscleName: "Músculo prócero", muscleDescription: "O músculo tem a função de rebaixar a extremidade medial da sobrancelha e enrugar a pele da glabela.", muscleIllustrationName: "procero"),
                             Muscle(expression: "Espanto", muscleName: "Músculo orbicular do olho", muscleDescription: "Esse músculo divide-se em 3 partes: \n  Orbital: fecha as pálpebras com firmeza; \n  Palpebral externa: fecha pálpebras suavemente; \n  Profunda: comprime o saco lacrimal.\n Ele é ativado somente no sorriso genuíno.", muscleIllustrationName: "orbicularOlho"),
                             Muscle(expression: "Espanto", muscleName: "Músculo levantador do lábio superior", muscleDescription: "Eleva o lábio superior, expõe os dentes maxilares.", muscleIllustrationName: "levantadorLabio"),
                             Muscle(expression: "Espanto", muscleName: "Músculo zigomático maior", muscleDescription: "Tem função de elevação e eversão do ângulo da boca.", muscleIllustrationName: "zigomaticoMaior"),
                             Muscle(expression: "Espanto", muscleName: "Músculo zigomático menor", muscleDescription: "Tem a função de elevar o lábio juntamente com o músculo levantador do lábio superior e asa do nariz.", muscleIllustrationName: "zigomaticoMenor"),
                             Muscle(expression: "Espanto", muscleName: "Músculo risório", muscleDescription: "Tem função de estender o ângulo da boca lateralmente.", muscleIllustrationName: "risorio")

    ]
}

struct DisgustMuscles {
    let muscles: [Muscle] = [Muscle(expression: "Nojo", muscleName: "Músculo occipitofrontal", muscleDescription: "Tem a função de elevar as sobrancelhas e enrugar a pele da testa, enquanto a da parte occipital é retrair o couro cabeludo.", muscleIllustrationName: "frontal"),
                             Muscle(expression: "Nojo", muscleName: "Músculo prócero", muscleDescription: "O músculo tem a função de rebaixar a extremidade medial da sobrancelha e enrugar a pele da glabela.", muscleIllustrationName: "procero"),
                             Muscle(expression: "Nojo", muscleName: "Músculo orbicular do olho", muscleDescription: "Esse músculo divide-se em 3 partes: \n  Orbital: fecha as pálpebras com firmeza; \n  Palpebral externa: fecha pálpebras suavemente; \n  Profunda: comprime o saco lacrimal.\n Ele é ativado somente no sorriso genuíno.", muscleIllustrationName: "orbicularOlho"),
                             Muscle(expression: "Nojo", muscleName: "Músculo levantador do lábio superior e asa do nariz", muscleDescription: "Eleva o lábio superior, expõe os dentes maxilares.", muscleIllustrationName: "levantadorLabioAsaNariz"),
                             Muscle(expression: "Nojo", muscleName: "Músculo levantador do lábio superior", muscleDescription: "Eleva o lábio superior, expõe os dentes maxilares.", muscleIllustrationName: "levantadorLabio"),
                             Muscle(expression: "Nojo", muscleName: "Músculo orbicular da boca", muscleDescription: "Tem a função de realizar o movimento de fechamento da boca, comprimir e alongar os lábios.", muscleIllustrationName: "orbicularBoca"),
                             Muscle(expression: "Nojo", muscleName: "Músculo depressor do ângulo da boca", muscleDescription: "Tem função de deprimir o ângulo da boca.", muscleIllustrationName: "depressorAnguloBoca")
    ]
}

struct SadnessMuscles {
    let muscles: [Muscle] = [Muscle(expression: "Tristeza", muscleName: "Músculo prócero", muscleDescription: "O músculo tem a função de rebaixar a extremidade medial da sobrancelha e enrugar a pele da glabela.", muscleIllustrationName: "procero"),
                             Muscle(expression: "Tristeza", muscleName: "Músculo corrugador do supercílio", muscleDescription: "Tem a função de criar rugas verticais sobre a glabela; é responsável por tracionar a sobrancelha medialmente.", muscleIllustrationName: "corrugadorSupercilio"),
                             Muscle(expression: "Tristeza", muscleName: "Músculo orbicular do olho", muscleDescription: "Esse músculo divide-se em 3 partes: \n Orbital: fecha as pálpebras com firmeza; \n  Palpebral externa: fecha pálpebras suavemente; \n Profunda: comprime o saco lacrimal.\n Ele é ativado somente no sorriso genuíno.", muscleIllustrationName: "orbicularOlho"),
                             Muscle(expression: "Tristeza", muscleName: "Músculo levantador do lábio superior e asa do nariz", muscleDescription: "Eleva o lábio superior, expõe os dentes maxilares.", muscleIllustrationName: "levantadorLabioAsaNariz"),
                             Muscle(expression: "Tristeza", muscleName: "Músculo zigomático maior", muscleDescription: "Tem função de elevação e eversão do ângulo da boca.", muscleIllustrationName: "zigomaticoMaior"),
                             Muscle(expression: "Tristeza", muscleName: "Músculo zigomático menor", muscleDescription: "Tem a função de elevar o lábio juntamente com o músculo levantador do lábio superior e asa do nariz.", muscleIllustrationName: "zigomaticoMenor"),
                             Muscle(expression: "Tristeza", muscleName: "Músculo risório", muscleDescription: "Tem função de estender o ângulo da boca lateralmente.", muscleIllustrationName: "risorio"),
                             Muscle(expression: "Tristeza", muscleName: "Músculo levantador do ângulo da boca", muscleDescription: "Tem a função de elevar o ângulo da boca e acentua o sulco nasolabial.", muscleIllustrationName: "levantadorAnguloBoca"),
                             Muscle(expression: "Tristeza", muscleName: "Músculo depressor do lábio inferior", muscleDescription: "Tem a função de abaixar o lábio inferior lateralmente.", muscleIllustrationName: "depressorLabio")
    ]
}
