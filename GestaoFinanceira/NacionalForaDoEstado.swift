//
// Created by João Dubiela on 02/10/22.
//

import Foundation

class NacionalForaDoEstado: Compra {

    var Estado: String
    var Aliquota: Double

    init(Produto: String, Quantidade: Int, Valor: Double, Fornecedor: String, Estado: String, Aliquota: Double) {
        self.Estado = Estado
        self.Aliquota = Aliquota / 100
        super.init(Produto: Produto, Quantidade: Quantidade, Valor: Valor, Fornecedor: Fornecedor)
    }

    func getValorComFrete() -> String {
        let ValorComFrete = String(format: "%.2f", Float(Quantidade)*Float(Valor)*(1+Float(Aliquota)))
        return "R$\(ValorComFrete)"
    }

    func getFrete() -> String {
        let Frete = String(format: "%.2f", Float(Quantidade)*Float(Valor)*Float(Aliquota))
        return "R$\(Frete)"
    }

    override func escrituracao() {
        print("\(getValorTotal()) foi adicionado ao estoque.")
        print("\(getValorComFrete()) foi o total registrado na tesouraria.")
        print("\(getValorTotal()) foi registrado para \(Fornecedor).")
        print("\(getFrete()) de ICMS foi registrado para \(Estado).")
    }
}
