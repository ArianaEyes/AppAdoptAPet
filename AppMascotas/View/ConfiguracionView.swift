//
//  ConfiguracionView.swift
//  AppMascotas
//
//  Created by user288551 on 6/9/26.
//

import SwiftUI

struct ConfiguracionView: View {
    var body: some View {
        
       
            
            NavigationStack {
                 
                VStack{
                    HStack{
                        Text("Configuraciones")
                            .font(.system(size: 35))
                            .bold()
                        Image(systemName: "gear.circle.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(Color.principal)
                    }
                    List {
                        Section("General") {
                            
                            NavigationLink {
                                Text("Pantalla para cambiar a cuenta de empresa")
                            } label: {
                                Label("Cambiar a cuenta de empresa", systemImage: "building.2")
                            }
                            
                            NavigationLink {
                                Text("Pantalla de personalización")
                            } label: {
                                Label("Personalización", systemImage: "paintbrush")
                            }
                            
                            NavigationLink {
                                Text("Pantalla de notificaciones")
                            } label: {
                                Label("Notificaciones", systemImage: "bell")
                            }
                            
                            NavigationLink {
                                Text("Pantalla de privacidad")
                            } label: {
                                Label("Privacidad", systemImage: "lock.shield")
                            }
                            
                            NavigationLink {
                                Text("Pantalla de ayuda")
                            } label: {
                                Label("Ayuda y soporte", systemImage: "questionmark.circle")
                            }
                        }
                        Section {
                            Button("Cerrar sesión") {
                                // Logout
                            }
                            .foregroundStyle(.red)
                        }
                    }
                }
                
                
                
                
            }
            
        
                   
    }
}

          


#Preview {
    ConfiguracionView()
}
