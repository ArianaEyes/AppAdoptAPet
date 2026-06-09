//
//  Mascota.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//
import Foundation

struct Mascota: Identifiable {

    let id: UUID

    let nombre: String
    let edad: String
    let peso: String
    let genero: String
    let ubicacion: String
    let descripcion: String
    let vacunas: [String]
    let contacto: String
    let imagen: String
    let categoria: String
}
