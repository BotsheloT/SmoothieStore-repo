//
//  ShakeInstructionsView.swift
//  ShakeInstructionsView
//
//  Created by GMAN TECH on 9/4/21.
//

import SwiftUI

struct ShakeInstructionsView: View {
    var shake: Shake
    var body: some View {
        GroupBox {
            VStack(alignment: .leading) {
                HStack {
                    Text("Instructions")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Text("\(shake.servings) \(shake.sserv)")
                }
                Text(shake.items)
                Divider()
                Text(shake.instructions)
                Divider()
                Text(shake.extraFact)
            }
        }
        .padding(.horizontal)
    }
}

struct ShakeInstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        ShakeInstructionsView(shake: shakesData[0])
    }
}
