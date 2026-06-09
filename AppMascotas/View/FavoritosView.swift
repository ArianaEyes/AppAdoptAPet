//
//  FavoritosView.swift
//  AppMascotas
//
//  Created by user295757 on 6/8/26.
//

import SwiftUI

struct FavoritosView: View {

    let columnas = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    let favoritos = mascotasData.prefix(4)

    var body: some View {

        NavigationStack {

            ZStack {

                Color("Background")
                    .ignoresSafeArea()

                ScrollView(showsIndicators: false) {

                    VStack(alignment: .leading, spacing: 24) {

                        VStack(alignment: .leading, spacing: 6) {

                            Text("Mis Favoritos")
                                .tituloPrincipal()

                            Text("\(favoritos.count) mascotas guardadas")
                                .subtituloPrincipal()
                        }

                        if favoritos.isEmpty {

                            VStack(spacing: 20) {

                                Image(systemName: "heart.slash.fill")
                                    .font(.system(size: 70))
                                    .foregroundColor(Color("Primary").opacity(0.4))

                                Text("Aún no tienes favoritos")
                                    .font(
                                        .system(
                                            size: 20,
                                            weight: .semibold,
                                            design: .rounded
                                        )
                                    )

                                Text("Explora mascotas y guarda\nlas que más te gusten")
                                    .subtituloPrincipal()
                                    .multilineTextAlignment(.center)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.top, 60)

                        } else {

                            LazyVGrid(
                                columns: columnas,
                                spacing: 18
                            ) {

                                ForEach(Array(favoritos)) { mascota in

                                    NavigationLink {

                                        DetalleMascotaView(
                                            mascota: mascota
                                        )

                                    } label: {

                                        MascotaCard(
                                            mascota: mascota
                                        )
                                    }
                                    .buttonStyle(.plain)
                                }
                            }
                        }

                        Spacer()
                            .frame(height: 20)
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FavoritosView()
}
