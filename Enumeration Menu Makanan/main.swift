//
//  main.swift
//  Enumeration Menu Makanan
//
//  Created by Yogi Arif Widodo on 17/06/22.
//

import Foundation


// MARK: Mendapatkan input dari pengguna.
func getInput(message: String) -> String? {
    print(message, terminator: " : ")
    return readLine()
}

// MARK: Mendapatkan input dari pengguna dengan tipe data integer
func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message) {
        return Int(inputString)
    } else {
        return nil
    }
}

// MARK: Enmeration Makanan Berat
enum HeavyMeal: Int, CaseIterable {
    case nasiGoreng = 1, mieInstan, magelangan, nasiKuning, kwetiau, nasiPutih
}

// MARK: Enumeration Makanan Ringan
enum SideDish: Int, CaseIterable {
    case ikan = 1, telur, tempe, tahu, kerupuk
}
 
// MARK: Enumeration Minuman
enum Drinks: Int, CaseIterable {
    case esTeh = 1, esJeruk, kopi, airPutih
}

// MARK: Menampilkan semua makanan
func showAllHeavyMeal() {
    print("Makanan berat")
    for heavyMeal in HeavyMeal.allCases {
        print("[\(heavyMeal.rawValue)] \(heavyMeal)")
    }
}

// MARK: Menampilkan semua makanan ringan.
func showAllSideDish(){
    print("Lauk")
    for sideDish in SideDish.allCases {
        print("[\(sideDish.rawValue)] \(sideDish)")
    }
}
 
// MARK: Menampilkan semua minuman.
func showAllDrink(){
    print("Minuman")
    for drink in Drinks.allCases {
        print("[\(drink.rawValue)] \(drink)")
    }
}

// MARK: Menampung informasi makanan, minuman dan makanan ringan
var total = 0
var item = ("", "", "")

// MARK: Memasukkan makanan
func inputHeavyMeal() {
    if let position = getInputInt(message: "Pilih Makanan") {
        if let heavyMeal = HeavyMeal(rawValue: position) {
            switch heavyMeal {
            case .nasiGoreng:
                total += 7000
                item.0 = "Nasi Goreng"
            case .mieInstan:
                total += 6000
                item.0 = "Mie Instan"
            case .magelangan:
                total += 7000
                item.0 = "Magelangan"
            case .nasiKuning:
                total += 5000
                item.0 = "Nasi Kuning"
            case .kwetiau:
                total += 10000
                item.0 = "Kwetiau"
            case .nasiPutih:
                total += 3000
                item.0 = "Nasi Putih"
            }
        } else {
            print("Posisi \(position) tidak ditemukan")
        }
    } else {
        print("Input tidak valid")
    }
}

func inputSideDish(){
    if let position = getInputInt(message: "Pilihlah lauk"){
        if let sideDish = SideDish(rawValue: position) {
            switch sideDish {
            case .ikan:
                total += 5000
                item.1 = "Ikan"
            case .kerupuk:
                total += 500
                item.1 = "Kerupuk"
            case .tahu:
                total += 1000
                item.1 = "Tahu"
            case .telur:
                total += 3000
                item.1 = "Telur"
            case .tempe:
                total += 1000
                item.1 = "Tempe"
            }
        } else {
            print("Posisi \(position) tidak ditemukan")
        }
    }else{
        print("Input tidak valid")
    }
}
 
func inputDrinks(){
    if let position = getInputInt(message: "Pilihlah Minuman"){
        if let drink = Drinks(rawValue: position) {
            switch drink {
            case .airPutih:
                total += 0
                item.2 = "Air Putih"
            case .esJeruk:
                total += 2500
                item.2 = "Es Jeruk"
            case .esTeh:
                total += 2000
                item.2 = "Es Teh"
            case .kopi:
                total += 3000
                item.2 = "Kopi"
            }
        } else {
            print("Posisi \(position) tidak ditemukan")
        }
    }else{
        print("Input tidak valid")
    }
}

func menu(){
    print("Selamat datang di Rumah Makan Dicoding")
    print("--------------------------------------")
    showAllHeavyMeal()
    inputHeavyMeal()
    print("--------------------------------------")
    showAllSideDish()
    inputSideDish()
    print("--------------------------------------")
    showAllDrink()
    inputDrinks()
    print("--------------------------------------")
    print("Anda memilih \(item.0), \(item.1), dan \(item.2) dengan total harga Rp. \(total)")
    print("--------------------------------------")
    print("Terima kasih, selamat datang kembali!")
}


menu()
