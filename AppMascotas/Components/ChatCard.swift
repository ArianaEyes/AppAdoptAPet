//
//  ChatCard.swift
//  AppMascotas
//
//  Created by user295757 on 6/8/26.
//
import SwiftUI

struct ChatCard: View {

    let nombre: String
    let mensaje: String

    var body: some View {

        HStack(spacing: 15) {

            Circle()
                .fill(Color("Primary"))
                .frame(width: 60, height: 60)
                .overlay {

                    Image(systemName: "pawprint.fill")
                        .foregroundColor(.white)
                }

            VStack(
                alignment: .leading,
                spacing: 6
            ) {

                Text(nombre)
                    .font(.headline)

                Text(mensaje)
                    .foregroundStyle(Color("Gray"))
                    .lineLimit(2)
            }

            Spacer()
        }
        .padding()
        .background(Color("CardBackground"))
        .cornerRadius(20)
        .shadow(
            color: .black.opacity(0.05),
            radius: 5
        )
    }
}

#Preview {
    ChatCard(
        nombre: "Luna",
        mensaje: "Hola"
    )
    .padding()
}
