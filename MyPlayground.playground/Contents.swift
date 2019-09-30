import UIKit

//Dicionario
//declarando um dicionario de string

var alunos = [
    "Andre": "Swift",
    "Catia": "IOS",
    "Amanda": "Java",
    "Gabriel": "C#",
    "Mariana": "Node JS"
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
