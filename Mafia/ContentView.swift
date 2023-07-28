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
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Mafia")
                    .bold()
                    .font(.largeTitle)
                
                VStack {
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
                }.padding(.vertical, 20)
                
                NavigationLink("Start Game", destination: CardView()).simultaneousGesture(TapGesture().onEnded({
                    startGame(civillianValue: civillianValue, mafiaValue: mafiaValue, doctorValue: doctorValue, maniacValue: maniacValue)
                })).buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
