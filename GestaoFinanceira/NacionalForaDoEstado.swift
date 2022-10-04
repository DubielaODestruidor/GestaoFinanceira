//
// Created by João Dubiela on 02/10/22.
//

import Foundation

struct NacionalForaDoEstado: Compra {

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

    func getValorComFrete() -> String {
        let ValorComFrete = String(format: "%.2f", Float(Quantidade)*Float(Valor)*(1+Float(Extra2)))
        return "R$\(ValorComFrete)"
    }

    func getFrete() -> String {
        let Frete = String(format: "%.2f", Float(Quantidade)*Float(Valor)*Float(Extra2))
        return "R$\(Frete)"
    }

    func escrituracao() {
        print("\(getValorTotal()) foi adicionado ao estoque.")
        print("\(getValorComFrete()) foi o total registrado na tesouraria.")
        print("\(getValorTotal()) foi registrado para \(Fornecedor).")
        print("\(getFrete()) de alíquota foi registrado para \(Extra1).")
    }
}
