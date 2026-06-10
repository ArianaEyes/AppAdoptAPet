//
//  HomeView.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.

import SwiftUI

struct HomeView: View {

    @StateObject private var vm = HomeViewModel()

    private let columnas = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    var body: some View {

        NavigationStack {

            ZStack {

                Color("Background")
                    .ignoresSafeArea()

                ScrollView(showsIndicators: false) {

                    VStack(alignment: .leading, spacing: 24) {

                        HeaderView()

                        SearchBar(texto: $vm.busqueda)

                        ZStack(alignment: .bottomLeading) {

                            Image("Image 2")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 220)
                                .frame(maxWidth: .infinity)
                                .clipped()

                            LinearGradient(
                                colors: [
                                    .clear,
                                    .black.opacity(0.75)
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )

                            VStack(alignment: .leading, spacing: 8) {

                                Text("Encuentra tu compañero ideal")
                                    .font(
                                        .system(
                                            size: 28,
                                            weight: .bold,
                                            design: .rounded
                                        )
                                    )

                                Text("Más de 200 mascotas buscan un hogar")
                                    .font(.subheadline)
                            }
                            .foregroundColor(.white)
                            .padding()
                        }
                        .frame(height: 220)
                        .clipShape(
                            RoundedRectangle(
                                cornerRadius: 28
                            )
                        )

                        VStack(alignment: .leading, spacing: 12) {

                            Text("Categorías")
                                .font(
                                    .system(
                                        size: 24,
                                        weight: .bold,
                                        design: .rounded
                                    )
                                )

                            ScrollView(.horizontal, showsIndicators: false) {

                                HStack(spacing: 12) {

                                    ForEach(vm.categorias, id: \.self) { categoria in

                                        Button {

                                            vm.categoriaSeleccionada = categoria

                                        } label: {

                                            VStack(spacing: 6) {

                                                Image(systemName: vm.iconoParaCategoria(categoria))
                                                    .font(.system(size: 28))

                                                
                                            }
                                            .frame(height: 60)
                                            .padding(.horizontal, 18)
                                            .padding(.vertical, 12)
                                            .background(
                                                vm.categoriaSeleccionada == categoria
                                                ? Color("Primary")
                                                : Color("Secondary")
                                            )
                                            .foregroundColor(
                                                vm.categoriaSeleccionada == categoria
                                                ? Color("Background")
                                                : Color("Inverted")
                                            )
                                            .cornerRadius(22)
                                        }
                                    }
                                }
                            }
                        }

                        HStack {

                            Text("Mascotas destacadas")
                                .font(
                                    .system(
                                        size: 24,
                                        weight: .bold,
                                        design: .rounded
                                    )
                                )

                            Spacer()

                            Text("\(vm.mascotasFiltradas.count)")
                                .foregroundColor(Color("Gray"))
                        }

                        LazyVGrid(
                            columns: columnas,
                            spacing: 18
                        ) {

                            ForEach(vm.mascotasFiltradas) { mascota in

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

                        Spacer()
                            .frame(height: 30)
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    HomeView()
}
