//
//  PaginaModificarSaldoView.swift
//  Training_Observable_Objects
//
//  Created by Pedro henrique Dias hemmel de oliveira souza on 06/03/23.
//

import SwiftUI

struct PaginaModificarSaldoView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var carteiraPessoaViewModel: CarteiraPessoaViewModel
    @State var qtdSaldo = ""
    @State var acaoInvalida = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("Saldo atual: \(String(format: "%.2f", carteiraPessoaViewModel.carteiraPessoa.saldo))")
            Spacer()
            TextField("Digite aqui", text: $qtdSaldo)
                .padding(.bottom, 15)
            Button {
                self.carteiraPessoaViewModel.adicionaSaldoCarteiraSaldo(qtdSaldo: Double(qtdSaldo) ?? 0.0)
                self.dismiss()
            } label: {
                Text("Adicionar saldo")
            }
            .padding(.bottom, 15)
            Button {
                if (carteiraPessoaViewModel.carteiraPessoa.saldo - (Double(qtdSaldo) ?? 0.0)) >= 0 {
                    self.carteiraPessoaViewModel.retiraSaldoCarteiraSaldo(qtdSaldo: Double(qtdSaldo) ?? 0.0)
                    self.dismiss()
                } else {
                    self.acaoInvalida = true
                }
            } label: {
                VStack {
                    if acaoInvalida {
                        Text("Ação inválida: \(carteiraPessoaViewModel.carteiraPessoa.nome) não tem saldo suficiente.")
                            .padding(.bottom, 10)
                            .foregroundColor(.red)
                    }
                    Text("Retirar saldo")
                }
            }
            Spacer()
        }
    }
}
