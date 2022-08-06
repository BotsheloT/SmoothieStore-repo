//
//  ShakeImageView.swift
//  ShakeImageView
//
//  Created by GMAN TECH on 9/4/21.
//

import SwiftUI

struct ShakeImageView: View {
    var shake: Shake
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(shake.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 200, maxWidth: 400, minHeight: 200, maxHeight: 400)
                .cornerRadius(13)
            Text(shake.quick)
                .font(.title3)
                .bold()
                .padding()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("BackgroundColor")/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .padding([.leading, .bottom, .trailing])
        }
        .padding(.horizontal)
    }
}

struct ShakeImageView_Previews: PreviewProvider {
    static var previews: some View {
        ShakeImageView(shake: shakesData[0])
            .preferredColorScheme(.light)
    }
}
