//
//  ChatView.swift
//  AppMascotas
//
//  Created by user295757 on 6/8/26.
//
import SwiftUI

struct ChatView: View {

    var body: some View {

        NavigationStack {

            ZStack {

                Color("Background")
                    .ignoresSafeArea()

                ScrollView {

                    VStack(spacing: 16) {

                        Text("Mensajes")
                            .tituloPrincipal()

                        ChatCard(
                            nombre: "Luna",
                            mensaje: "Hola, ¿todavía está disponible?"
                        )

                        ChatCard(
                            nombre: "Rocky",
                            mensaje: "Gracias por tu interés."
                        )

                        ChatCard(
                            nombre: "Michi",
                            mensaje: "¿Podemos coordinar una visita?"
                        )

                        ChatCard(
                            nombre: "Nala",
                            mensaje: "La mascota sigue disponible."
                        )
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ChatView()
}
