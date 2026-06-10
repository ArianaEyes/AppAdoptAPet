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
                    
                    Image(systemName: "gear.circle.fill")
                        .font(.system(size: 40))
                        .foregroundStyle(Color.principal)
                    Text("Configuraciones")
                        .font(.system(size: 35))
                        .bold()
                    Spacer()
                        .frame(width: 40)
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
                    .foregroundColor(Color.black)
                    .listRowBackground(Color.white)
                    
                    Section {
                        Button("Cerrar sesión") {
                            // Logout
                        }
                        .foregroundStyle(Color.principal)
                    }
                }
                .scrollContentBackground(.hidden)
                                
                
                
            }.background(Color.principal.opacity(0.2))
        }
            
        
                   
    }
}

          


#Preview {
    ConfiguracionView()
}
