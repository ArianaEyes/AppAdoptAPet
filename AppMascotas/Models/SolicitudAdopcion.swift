//
//  SolicitudAdopcion.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI
import Foundation

struct SolicitudAdopcion: Identifiable {

    let id: UUID
    let nombre: String
    let edad: String
    let tipoVivienda: String
    let correo: String
    let ubicacion: String
    let motivo: String
}
