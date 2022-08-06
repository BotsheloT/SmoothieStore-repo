//
//  ShakeDescriptionView.swift
//  ShakeDescriptionView
//
//  Created by GMAN TECH on 9/4/21.
//

import SwiftUI

struct ShakeDescriptionView: View {
    var shake: Shake
    var body: some View {
        GroupBox {
            HStack {
                Text("About")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            Text(shake.description)
        }
        .padding(.horizontal)
    }
}

struct ShakeDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ShakeDescriptionView(shake: shakesData[0])
    }
}
