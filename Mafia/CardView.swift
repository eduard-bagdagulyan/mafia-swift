//
//  CardView.swift
//  Mafia
//
//  Created by Eduard Bagdagulyan on 27.07.23.
//

import SwiftUI

struct CardView: View {
    enum ButtonState: String {
        case show = "Show Role"
        case hide = "Hide Role"
    }
    @State private var buttonTitle: String = ButtonState.show.rawValue
    @State private var buttonDisabled: Bool = false
    @State private var roleText: String = ""
    
    var body: some View {
        VStack {
            Text(roleText).font(.title)
            Button(buttonTitle) {
                if (rolesArr.isEmpty) {
                    buttonDisabled = true
                }
                if buttonTitle == ButtonState.show.rawValue {
                    buttonTitle = ButtonState.hide.rawValue
                    roleText = rolesArr.removeFirst()
                } else {
                    buttonTitle = ButtonState.show.rawValue
                    roleText = ""
                }
            }.buttonStyle(.borderedProminent).disabled(buttonDisabled)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
