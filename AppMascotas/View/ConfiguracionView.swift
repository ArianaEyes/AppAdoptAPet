//
//  ConfiguracionView.swift
//  AppMascotas
//
//  Created by user288551 on 6/9/26.
//

import SwiftUI

struct ConfiguracionView: View {
    @State var irLogin = false
    var body: some View {
        
        
        
        NavigationStack {
            
            VStack{
                HStack{
                    
                    Image(systemName: "gearshape.fill")
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
                        Button {
                            // Logout
                            irLogin = true
                        }label:{
                            HStack{
                                Spacer().frame(width: 10)
                                Text("Cerrar sesión")
                                Spacer().frame(width: 200)
                                Image(systemName: "rectangle.portrait.and.arrow.forward.fill")
                            }
                        }
                        .foregroundStyle(Color.principal)
                        
                    }
                }
                .scrollContentBackground(.hidden)
                                
                
                
            }.background(Color.principal.opacity(0.2))
            
                .navigationDestination(isPresented: $irLogin) {
                    SplashView()
                        .navigationBarBackButtonHidden(true)
                }
        }
        
        
                   
    }
}

          


#Preview {
    ConfiguracionView()
}
