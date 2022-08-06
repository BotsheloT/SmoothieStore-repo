//
//  ShakeNutrientsView.swift
//  ShakeNutrientsView
//
//  Created by GMAN TECH on 9/4/21.
//

import SwiftUI

struct ShakeNutrientsView: View {
    var shake: Shake
    var body: some View {
        GroupBox {
            VStack(alignment: .leading) {
                HStack {
                    Text("Nutrients (Per Serving)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                Divider()
                HStack {
                    Text("Total Calories:")
                        .bold()
                    Spacer()
                    Text(shake.nutritionCal)
                }
                Divider()
                HStack {
                    Text("Total Fat:")
                        .bold()
                    Spacer()
                    Text(shake.nutritionFat)
                }
                Divider()
                HStack {
                    Text("Total Carbohydrates:")
                        .bold()
                    Spacer()
                    Text(shake.nutritionCarbs)
                }
                Divider()
                HStack {
                    Text("Total Protein:")
                        .bold()
                    Spacer()
                    Text(shake.nutritionCarbs)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ShakeNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        ShakeNutrientsView(shake: shakesData[0])
    }
}
