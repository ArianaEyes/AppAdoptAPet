//
//  PerfilView.swift
//  AppMascotas
//
//  Created by user295757 on 6/8/26.
//
import SwiftUI

struct PerfilView: View {
    //@Environment(\.colorScheme) var colorScheme
    
    @State private var irFavoritos = false
    @State private var irSolicitudes = false
    @State private var irPerfil = false
    @State private var irConfiguracion = false
    @AppStorage("modoOscuro") var modoOscuro = false
    
    var body: some View {

        NavigationStack {
            
            ZStack {
                
                Color("Background")
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack(spacing: 25) {
                        
                        VStack(spacing: 15) {
                            
                            Text("Mi Perfil")
                                .font(.system(size: 40,
                                              weight: .semibold,
                                              design: .rounded,
                                             ))
                            
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 130, height: 130)
                                .foregroundColor(Color("Primary"))
                            
                            Text("Usuario")
                                .font(
                                    .system(
                                        size: 28,
                                        weight: .bold,
                                        design: .rounded
                                    )
                                )
                            
                            Text("usuario@email.com")
                                .foregroundColor(.gray)
                        }
                        .padding(.top)
                        
                        VStack(spacing: 16) {
                            
                            PerfilOpcion(
                                icono: "heart.fill",
                                titulo: "Mis Favoritos",
                                accion: { irFavoritos = true }
                            )
                            
                            PerfilOpcion(
                                icono: "pawprint.fill",
                                titulo: "Solicitudes de Adopción",
                                accion: {irSolicitudes = true}  // próximamente
                            )
                            
                            PerfilOpcion(
                                icono: "gearshape.fill",
                                titulo: "Configuración",
                                accion: {irConfiguracion = true}  // próximamente
                            )
                            
                            // Modo oscuro — con toggle en lugar de chevron
                            HStack {
                                
                                Image(systemName: modoOscuro ? "moon.fill" : "sun.max.fill")
                                    .font(.title3)
                                    .foregroundColor(Color("Primary"))
                                    .frame(width: 35)
                                
                                Text("Modo Oscuro")
                                    .foregroundColor(.primary)
                                
                                Spacer()
                                
                                Toggle("", isOn: $modoOscuro)
                                    .tint(Color("Primary"))
                                //Text(colorScheme == .dark ? "DARK" : "LIGHT")
                            }
                            .padding()
                            .background(Color("CardBackground"))
                            .cornerRadius(18)
                            .shadow(
                                color: .black.opacity(0.05),
                                radius: 5
                            )
                        }
                        
                        
                        
                        Spacer()
                    }
                    .padding()
                }
            }
            
            .navigationDestination(isPresented: $irFavoritos) {
                FavoritosView()
            }
            .navigationDestination(isPresented: $irConfiguracion) {
                ConfiguracionView()
            }
        }
    }
}

#Preview {
    PerfilView()
}
