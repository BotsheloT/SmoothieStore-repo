//
//  ContentView.swift
//  Smoothie Store
//
//  Created by Botshelo Tlhabanyane on 2022/08/06.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        Text("Smoothie Town")
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewInterfaceOrientation(.portrait)
    }
}
