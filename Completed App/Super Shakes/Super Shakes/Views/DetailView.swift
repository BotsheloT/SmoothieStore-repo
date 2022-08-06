//
//  DetailView.swift
//  DetailView
//
//  Created by GMAN TECH on 9/4/21.
//

import SwiftUI

struct DetailView: View {
    var shake: Shake
    var body: some View {
            ScrollView(.vertical) {
                
                ShakeImageView(shake: shake)
                ShakeDescriptionView(shake: shake)
                ShakeInstructionsView(shake: shake)
                ShakeNutrientsView(shake: shake)
            }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(shake: shakesData[0])
    }
}
