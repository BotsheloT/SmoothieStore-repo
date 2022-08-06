//
//  OnboardingView.swift
//  OnboardingView
//
//  Created by GMAN TECH on 8/21/21.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        VStack {
            Spacer()
            
            Image("Icon")
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(20)
            Text("Super Shakes")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            Group {
                Image(systemName: "list.bullet.below.rectangle")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                    .padding(5)
                Text("Explore yummy shakes and smoothies.")
            }
            Group {
                Image(systemName: "arrow.up.arrow.down")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                    .padding(5)
                Text("Sort through many types of drinks.")
            }
            Group {
                Image(systemName: "square.text.square")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                    .padding(5)
                Text("See nutrition information for every drink.")
            }
            Spacer()
            Spacer()
            Button(action: {
                isOnboarding = false
            }) {
                HStack {
                    Spacer()
                    Text("Start Blending")
                        .bold()
                        .padding()
                    Spacer()
                }
                .foregroundColor(.white)
                .background(Color.accentColor)
                .cornerRadius(10)
                .padding()
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
