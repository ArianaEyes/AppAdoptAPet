//
//  BottomBar.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//
import SwiftUI

struct BottomBar: View {

    var body: some View {

        HStack {

            Spacer()

            Image(systemName: "house.fill")

            Spacer()

            Image(systemName: "heart.fill")

            Spacer()

            Image(systemName: "plus.circle.fill")

            Spacer()

            Image(systemName: "message.fill")

            Spacer()

            Image(systemName: "person.fill")

            Spacer()
        }
        .font(.system(size: 24))
        .foregroundColor(Color("Primary"))
        .padding()
        .background(Color("CardBackground"))
        .clipShape(
            RoundedRectangle(
                cornerRadius: 30
            )
        )
        .shadow(
            color: .black.opacity(0.08),
            radius: 10
        )
    }
}
