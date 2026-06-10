//
//  ChatMainView.swift
//  AppMascotas
//
//  Created by Alumno on 10/06/26.
//

import SwiftUI

struct ChatMainView: View {
    @State private var texto = "Escribe un mensaje..."
    var body: some View {
        ZStack{
            Color(.background).ignoresSafeArea()
            VStack{
                Spacer()
                Text("Chat")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.principal)
                VStack(spacing:10){
                    Spacer()
                    HStack{
                        ChatCard(
                            nombre: "Nala",
                            mensaje: "La mascota sigue disponible."
                        ).cornerRadius(35)
                            .frame(width: 260,height: 110)
                        Spacer().frame(width: 80)
                    }
                    
                    HStack{
                        Spacer().frame(width: 70)
                        chatClient(
                            nombre: "Stephanie",
                            mensaje: "Bien! Cuando puedo ir a recogerla?"
                        ).cornerRadius(35)
                            .frame(width: 340,height: 110)
                    }
                    
                    HStack{
                        ChatCard(
                            nombre: "Nala",
                            mensaje: "El sábado está bien."
                        ).cornerRadius(35)
                            .frame(width: 260,height: 110)
                        Spacer().frame(width: 80)
                    }
                    
                    HStack{
                        Spacer().frame(width: 130)
                        chatClient(
                            nombre: "Stephanie",
                            mensaje: "Ok, iré ese día."
                        ).cornerRadius(35)
                            .frame(width: 340,height: 110)
                    }
                    HStack{
                        ChatCard(
                            nombre: "Nala",
                            mensaje: "Ben la estará esperando!"
                        ).cornerRadius(35)
                            .frame(width: 260,height: 110)
                        Spacer().frame(width: 80)
                    }
                    
                    SearchBar(texto: $texto).frame(width: 330)
                        .cornerRadius(30)
                    Spacer().frame(height: 10)
                    
                    
                    
                }
                
                .frame(width: 370,height: 720)
                
                .background(Color.principal)
                .cornerRadius(50)
                
                
                
            }
        }
    }
}

#Preview {
    ChatMainView()
}
