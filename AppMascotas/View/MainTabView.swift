//
//  MainTabView.swift
//  AppMascotas
//
//  Created by user295757 on 6/8/26.
//

import SwiftUI

struct MainTabView: View {

    var body: some View {

        TabView {

            HomeView()
                .tabItem {
                    Label(
                        "Inicio",
                        systemImage: "house.fill"
                    )
                }

            FavoritosView()
                .tabItem {
                    Label(
                        "Favoritos",
                        systemImage: "heart.fill"
                    )
                }

            PublicarMascotaView()
                .tabItem {
                    Label(
                        "Publicar",
                        systemImage: "plus.circle.fill"
                    )
                }

            ChatView()
                .tabItem {
                    Label(
                        "Chat",
                        systemImage: "message.fill"
                    )
                }

            PerfilView()
                .tabItem {
                    Label(
                        "Perfil",
                        systemImage: "person.fill"
                    )
                }
        }
        .tint(Color("Gray"))
        
    }
}

#Preview {
    MainTabView()
}
