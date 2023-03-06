//
//  CarteiraPessoaViewModel.swift
//  Training_Observable_Objects
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 06/03/23.
//

import Foundation

class CarteiraPessoaViewModel: ObservableObject {
    @Published var carteiraPessoa: CarteiraPessoaModel
    
    //MARK: - Inicializador
    init(carteiraPessoa: CarteiraPessoaModel) {
        self.carteiraPessoa = carteiraPessoa
    }

    //MARK: - Funções aqui
    func adicionaSaldoCarteiraSaldo(qtdSaldo: Double) {
        self.carteiraPessoa.saldo += qtdSaldo
    }
    func retiraSaldoCarteiraSaldo(qtdSaldo: Double) {
        self.carteiraPessoa.saldo -= qtdSaldo
    }
}
