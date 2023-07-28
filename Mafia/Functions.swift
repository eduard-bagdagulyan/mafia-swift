//
//  Functions.swift
//  Mafia
//
//  Created by Eduard Bagdagulyan on 28.07.23.
//

import Foundation

public var rolesArr: [String] = []

func startGame(civillianValue: Int, mafiaValue: Int, doctorValue: Int, maniacValue: Int) {
    rolesArr.removeAll()
    rolesArr.append("Sheriff")
    rolesArr.append("Don")
    for _ in 1...civillianValue - 1 {
        rolesArr.append("Civilian")
    }
    for _ in 1...mafiaValue - 1 {
        rolesArr.append("Mafia")
    }
    if doctorValue > 0 {
        for _ in 1...doctorValue {
            rolesArr.append("Doctor")
        }
    }
    if maniacValue > 0 {
        for _ in 1...maniacValue {
            rolesArr.append("Maniac")
        }
    }
    rolesArr.shuffle()
}
