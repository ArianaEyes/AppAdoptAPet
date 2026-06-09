//
//  CustomSecureField.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI

struct CustomSecureField: View {

    let placeholder: String

    @Binding var texto: String

    var body: some View {

        SecureField(
            placeholder,
            text: $texto
        )
        .textFieldStyle()
    }
}
