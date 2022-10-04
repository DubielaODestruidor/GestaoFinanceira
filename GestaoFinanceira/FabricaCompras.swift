//
// Created by João Dubiela on 03/10/22.
//

import Foundation

class FabricaCompras {

    func registraCompra(Produto: String, Quantidade: Int, Valor: Double, Fornecedor: String, Extra1_tipo: String, Extra1: String, Extra2_tipo: String, Extra2: Double) -> Compra {
        if Extra1_tipo == "País" {
            return CompraInternacional(Produto: Produto, Quantidade: Quantidade, Valor: Valor, Fornecedor: Fornecedor, Extra1_tipo: Extra1_tipo, Extra1: Extra1, Extra2_tipo: Extra2_tipo, Extra2: Extra2)
        }
        else if Extra1_tipo == "Estado" {
            return NacionalForaDoEstado(Produto: Produto, Quantidade: Quantidade, Valor: Valor, Fornecedor: Fornecedor, Extra1_tipo: Extra1_tipo, Extra1: Extra1, Extra2_tipo: Extra2_tipo, Extra2: Extra2)
        }
        else if Extra1_tipo == "None" {
            return CompraNacional(Produto: Produto, Quantidade: Quantidade, Valor: Valor, Fornecedor: Fornecedor, Extra1_tipo: Extra1_tipo, Extra1: Extra1, Extra2_tipo: Extra2_tipo, Extra2: Extra2)
        }
        else {
            return "Erro" as! Compra
        }
    }
}
