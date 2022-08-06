//
//  ContentView.swift
//  Smoothie Store
//
//  Created by Botshelo Tlhabanyane on 2022/08/06.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack{
            //App Title
            Group{
                Image("Icon")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(30)
                Text("Smoothie Town")
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
            
            //Explore option
            Group{
                Image(systemName: "list.bullet.below.rectangle")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                    padding(5)                
            }
            
            //Sort Option
            Group{
                
            }
            
            //Information Option
            Group{
                
            }
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewInterfaceOrientation(.portrait)
    }
}
