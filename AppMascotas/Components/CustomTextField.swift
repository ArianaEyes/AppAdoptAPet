//
//  CustomTextField.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI

struct CustomTextField: View {

    let placeholder: String

    @Binding var texto: String

    var body: some View {

        TextField(
            placeholder,
            text: $texto
        )
        .textFieldStyle()
    }
}
