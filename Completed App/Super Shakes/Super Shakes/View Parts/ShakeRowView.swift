//
//  ShakeRowView.swift
//  ShakeRowView
//
//  Created by GMAN TECH on 8/28/21.
//

import SwiftUI

struct ShakeRowView: View {
    var shake: Shake
    var body: some View {
        HStack {
            Image(shake.image)
                .resizable()
                .frame(width: 90, height: 90)
                .cornerRadius(6)
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text(shake.name)
                        .bold()
                        .font(.headline)
                    Text(shake.quick)
                        .font(.subheadline)
                    Text("\(shake.nutritionCal) Calories")
                        .font(.footnote)
                }
                Spacer()
                Text(shake.type)
                    .font(.callout)
                    .bold()
                    .foregroundColor(.accentColor)
                Spacer()
            }
        }
        .frame(height: 100)
    }
}

struct ShakeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ShakeRowView(shake: shakesData[5])
    }
}
