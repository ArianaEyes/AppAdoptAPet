//
//  Solicitud.swift
//  AppMascotas
//
//  Created by user288551 on 6/9/26.
//

import SwiftUI

struct Solicitud: View {
    let nombre: String
    let mensaje: String
    let mascota: "Firulais"
    var body: some View {

        HStack(spacing: 15) {

            Circle()
                .fill(Color("Primary"))
                .frame(width: 60, height: 60)
                .overlay {

                    Image(systemName: "pawprint.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                }

            VStack(
                alignment: .leading,
                spacing: 6
            ) {

                Text(nombre)
                    .font(.headline)

                Text(mensaje)
                    .foregroundStyle(Color.principal)
                    .lineLimit(2)
            }

            Spacer().frame(width: 100)
             Image(systemName: "checkmark.bubble.fill")
                        .font(.system(size: 25))
                        .foregroundColor(.principal)
                        
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
    Solicitud(nombre: "Anthony", mensaje: "Solicita a \(mascota))
}

