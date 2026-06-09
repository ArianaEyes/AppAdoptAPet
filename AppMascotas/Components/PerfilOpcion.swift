//
//  PerfilOpcion.swift
//  AppMascotas
//
//  Created by user295757 on 6/8/26.
//

import SwiftUI

struct PerfilOpcion: View {

    let icono: String
    let titulo: String
    let accion: () -> Void

    var body: some View {
        Button(action: accion) {
            HStack {

                Image(systemName: icono)
                    .font(.title3)
                    .foregroundColor(Color("Primary"))
                    .frame(width: 35)

                Text(titulo)
                    .foregroundStyle(.primary)

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundColor(Color("Gray"))
            }
            .padding()
            .background(Color("CardBackground"))
            .cornerRadius(18)
            .shadow(
                color: .black.opacity(0.05),
                radius: 5
            )
        }
    }
}
