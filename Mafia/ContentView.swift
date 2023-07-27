//
//  ContentView.swift
//  Mafia
//
//  Created by Eduard Bagdagulyan on 27.07.23.
//

import SwiftUI

struct ContentView: View {
    @State private var civillianValue = 5
    @State private var mafiaValue = 2
    @State private var doctorValue = 0
    @State private var maniacValue = 0
    
    @State private var rolesArr: [String] = []
    
    func startGame() {
        rolesArr.append("Sheriff")
        rolesArr.append("Don")
        for _ in 1...civillianValue - 1 {
            rolesArr.append("Civilian")
        }
        for _ in 1...mafiaValue - 1 {
            rolesArr.append("Mafia")
        }
        if (doctorValue > 0) {
            for _ in 1...doctorValue {
                rolesArr.append("Doctor")
            }
        }
        if (maniacValue > 0) {
            for _ in 1...maniacValue {
                rolesArr.append("Maniac")
            }
        }
        rolesArr.shuffle()
    }
    
    var body: some View {
        VStack {
            Text("Mafia")
                .bold()
                .font(.largeTitle)
            HStack {
                Text("Civilian")
                    .font(.headline)
                Stepper(value: $civillianValue, in: 1...Int.max) {
                    Text(civillianValue.description)
                }
            }
            HStack {
                Text("Mafia")
                    .font(.headline)
                Stepper(value: $mafiaValue, in: 1...Int.max) {
                    Text(mafiaValue.description)
                }
            }
            HStack {
                Text("Doctor")
                    .font(.headline)
                Stepper(value: $doctorValue, in: 0...Int.max) {
                    Text(doctorValue.description)
                }
            }
            HStack {
                Text("Maniac")
                    .font(.headline)
                Stepper(value: $maniacValue, in: 0...Int.max) {
                    Text(maniacValue.description)
                }
            }
            Button("Start Game", action: startGame)
                .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
