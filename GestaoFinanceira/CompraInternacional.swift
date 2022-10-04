//
// Created by João Dubiela on 03/10/22.
//

import Foundation

struct CompraInternacional: Compra {

    private(set) var Produto: String
    private(set) var Quantidade: Int
    private(set) var Valor: Double
    private(set) var Fornecedor: String
    private(set) var Extra1_tipo: String
    private(set) var Extra1: String
    private(set) var Extra2_tipo: String
    private(set) var Extra2: Double

    func getValorTotal() -> String {
        let ValorTotal = String(format: "%.2f", Float(Quantidade)*Float(Valor))
        return "R$\(ValorTotal)"
    }

    func getValorComImposto() -> String {
        let ValorComImposto = String(format: "%.2f", Float(Quantidade)*Float(Valor)*(1+Float(Extra2)))
        return "R$\(Float(Quantidade)*Float(Valor)*(1+Float(Extra2)))"
    }

    func getImposto() -> String {
        let Imposto = String(format: "%.2f", Float(Quantidade)*Float(Valor)*Float(Extra2))
        return "R$\(Imposto)"
    }

    func escrituracao() {
        print("\(getValorTotal()) foi adicionado ao estoque.")
        print("\(getValorComImposto()) foi o total registrado na tesouraria.")
        print("\(getValorTotal()) foi registrado para \(Fornecedor).")
        print("\(getImposto()) de imposto de importação foi registrado para \(Extra1).")
    }
}
