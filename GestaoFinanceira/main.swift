//
//  main.swift
//  GestaoFinanceira
//
//  Created by João Dubiela on 26/09/22.
//
//

import Foundation

let fabrica = FabricaCompras()

print("\nCompra nacional")
let compraNacional = fabrica.registraCompra(Produto: "Coca-Cola", Quantidade: 10, Valor: 5.0, Fornecedor: "Coca-Cola", Extra1_tipo: "None", Extra1: "None", Extra2_tipo: "None", Extra2: 0)
compraNacional.escrituracao()

print("\nCompra nacional fora do estado")
let compraNacionalForaDoEstado = fabrica.registraCompra(Produto: "Bibs", Quantidade: 10, Valor: 5.0, Fornecedor: "Bibs", Extra1_tipo: "Estado", Extra1: "São Paulo", Extra2_tipo: "Aliquota", Extra2: 0.18)
compraNacionalForaDoEstado.escrituracao()

print("\nCompra internacional")
let compraInternacional = fabrica.registraCompra(Produto: "iPhone 14 Max Pro", Quantidade: 1, Valor: 10000.0, Fornecedor: "Apple", Extra1_tipo: "País", Extra1: "Estados Unidos", Extra2_tipo: "ICMS", Extra2: 0.6)
compraInternacional.escrituracao()
