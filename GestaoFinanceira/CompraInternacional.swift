//
// Created by João Dubiela on 03/10/22.
//

import Foundation

class CompraInternacional: Compra {

    var Pais: String
    var ImpostoDeImportacao: Double

    init(Produto: String, Quantidade: Int, Valor: Double, Fornecedor: String, Pais: String, ImpostoDeImportacao: Double) {
        self.Pais = Pais
        self.ImpostoDeImportacao = ImpostoDeImportacao / 100
        super.init(Produto: Produto, Quantidade: Quantidade, Valor: Valor, Fornecedor: Fornecedor)
    }

    func getValorComImposto() -> String {
        let ValorComImposto = String(format: "%.2f", Float(Quantidade)*Float(Valor)*(1+Float(ImpostoDeImportacao)))
        return "R$\(Float(Quantidade)*Float(Valor)*(1+Float(ImpostoDeImportacao)))"
    }

    func getImposto() -> String {
        let Imposto = String(format: "%.2f", Float(Quantidade)*Float(Valor)*Float(ImpostoDeImportacao))
        return "R$\(Imposto)"
    }

    override func escrituracao() {
        print("\(getValorTotal()) foi adicionado ao estoque.")
        print("\(getValorComImposto()) foi o total registrado na tesouraria.")
        print("\(getValorTotal()) foi registrado para \(Fornecedor).")
        print("\(getImposto()) de imposto de importação foi registrado para \(Pais).")
    }
}
