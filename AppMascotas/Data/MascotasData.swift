//
//  MascotasData.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import Foundation

let mascotasData: [Mascota] = [

    Mascota(
        id: UUID(),
        nombre: "Luna",
        edad: "2 años",
        peso: "12 kg",
        genero: "Hembra",
        ubicacion: "Miraflores",
        descripcion: "Luna es una perrita cariñosa y juguetona. Le encanta correr y convivir con niños.",
        vacunas: ["Rabia", "Parvovirus", "Moquillo"],
        contacto: "999 111 222",
        imagen: "Image",
        categoria: "Perros"
    ),

    Mascota(
        id: UUID(),
        nombre: "Rocky",
        edad: "3 años",
        peso: "18 kg",
        genero: "Macho",
        ubicacion: "San Isidro",
        descripcion: "Rocky es muy protector y amigable con las personas.",
        vacunas: ["Rabia", "Parvovirus"],
        contacto: "999 222 333",
        imagen: "Image 1",
        categoria: "Perros"
    ),

    Mascota(
        id: UUID(),
        nombre: "Milo",
        edad: "1 año",
        peso: "9 kg",
        genero: "Macho",
        ubicacion: "Surco",
        descripcion: "Milo es muy activo y le encanta jugar con pelotas.",
        vacunas: ["Rabia", "Moquillo"],
        contacto: "999 333 444",
        imagen: "Image 2",
        categoria: "Perros"
    ),

    Mascota(
        id: UUID(),
        nombre: "Nala",
        edad: "4 años",
        peso: "15 kg",
        genero: "Hembra",
        ubicacion: "Barranco",
        descripcion: "Nala es tranquila y disfruta mucho de los paseos.",
        vacunas: ["Rabia", "Parvovirus"],
        contacto: "999 444 555",
        imagen: "Image 3",
        categoria: "Perros"
    ),

    Mascota(
        id: UUID(),
        nombre: "Michi",
        edad: "2 años",
        peso: "4 kg",
        genero: "Hembra",
        ubicacion: "San Borja",
        descripcion: "Michi es una gatita curiosa y muy sociable.",
        vacunas: ["Triple Felina"],
        contacto: "999 555 666",
        imagen: "Image 4",
        categoria: "Gatos"
    ),

    Mascota(
        id: UUID(),
        nombre: "Tom",
        edad: "1 año",
        peso: "3 kg",
        genero: "Macho",
        ubicacion: "La Molina",
        descripcion: "Tom es tranquilo y disfruta descansar al sol.",
        vacunas: ["Triple Felina"],
        contacto: "999 666 777",
        imagen: "Image 5",
        categoria: "Gatos"
    ),

    Mascota(
        id: UUID(),
        nombre: "Pelusa",
        edad: "3 años",
        peso: "5 kg",
        genero: "Hembra",
        ubicacion: "Jesús María",
        descripcion: "Pelusa es cariñosa y muy juguetona.",
        vacunas: ["Triple Felina", "Rabia"],
        contacto: "999 777 888",
        imagen: "Image 6",
        categoria: "Gatos"
    ),

    Mascota(
        id: UUID(),
        nombre: "Loki",
        edad: "2 años",
        peso: "4 kg",
        genero: "Macho",
        ubicacion: "Magdalena",
        descripcion: "Loki es curioso y le encanta explorar.",
        vacunas: ["Triple Felina"],
        contacto: "999 888 999",
        imagen: "Image 7",
        categoria: "Gatos"
    )
]
