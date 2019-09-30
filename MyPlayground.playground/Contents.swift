import UIKit

//Dicionario
//declarando um dicionario de string

var alunos = [
    "Andre": "Swift",
    "Catia": "IOS",
    "Amanda": "Java",
    "Gabriel": "C#",
    "Mariana": "Node JS",
    "Äna": "C"
]
let novosAlunos = [
    "Ricardo": "Android",
    "Jennifer": "Tester",
    "Murilo": "Analista",
    "Catia": "Swift",
    "Maria": "Java"
]
//IMPRIME TODO ARRAY
//novosAlunos.forEach({
//   print($0)             //$ SIGNIFICA Q ESTA PERCORRENDO TODO O ARRAY
//})
//********************************************************************************
// SE DENTRO DO DICIONARIO NAO TIVER A KEY QUE ELE ESTA TENTANDO INCLUIR , ADICIONA
// FORMA TRADICIONAL DE EXECUTAR

//novosAlunos.forEach({
//    if !alunos.keys.contains($0.key){
//        alunos[$0.key] = $0.value
//    }
//
//})
//print(alunos)
//*****************************************************************************
alunos.merge(novosAlunos) { (alunos, _) -> String in  //QD NOMEIA O PRIMEIRO PARAMETRO ,ELE TEM PRIORIDADE CASO OCORRA DUPLICIDADE DE INFORMACAO E VICE VERSA
    alunos
}
print(alunos)
print()
print("===== GROUP TRADICIONAL =====")
print()
//AGRUPAR USANDO A INICIAL


//var dicionarioDeNomes: [String: [String]] = [:]

//for aluno in alunos{
//    if let caracter = aluno.key.first{
//        let prefixo = String(caracter)     //TRANSFORMANDO CARACTERE EM STRING
//        if var listaDeNomes = dicionarioDeNomes[prefixo] {     //ACRESCENTAR TODOS VALORES DA LISTA
//            listaDeNomes.append(aluno.key)
//            dicionarioDeNomes[prefixo] = listaDeNomes
//        }else{
//             dicionarioDeNomes[prefixo] = [aluno.key]
//
//        }
//
//    }
//}
//print(dicionarioDeNomes)
//print(alunos)

print()
print("===== GROUP COM MELHORIAS =====")
print()

let dicionarioDeNomes = Dictionary(grouping: alunos.keys,by: {$0.prefix(1)   } ) //O NUM E A QTD DE CARACTERES QUE QUERO AGRUPAR
//print(dicionarioDeNomes)

print()
print("===== COMPARACAO DE DICIONARIOS =====")
print()

let  alunosAlgoritmos = ["Amanda": 7, "Adriano": 10, "Bianca": 9, "Felipe": 7,"Mateus": 10]

let  alunosMatematica = ["Amanda": nil, "Adriano": 7, "Bianca": 8, "Felipe": 8,"Mateus": 5]

print(alunosAlgoritmos == alunosMatematica)

print()
print("===== COMPARACAO DE DICIONARIOS =====")
print()
