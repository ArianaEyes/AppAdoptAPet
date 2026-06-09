//
//  InfoCard.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI

struct InfoCard: View {

    let titulo: String
    let valor: String
    let icono: String

    var body: some View {

        VStack(spacing: 10) {

            Image(systemName: icono)
                .font(.title2)
                .foregroundColor(
                    Color("Primary")
                )

            Text(valor)
                .font(.headline)

            Text(titulo)
                .font(.caption)
                .foregroundColor(Color("Gray"))
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color("CardBackground"))
        .cornerRadius(20)
        .shadow(
            color: .black.opacity(0.05),
            radius: 5
        )
    }
}
