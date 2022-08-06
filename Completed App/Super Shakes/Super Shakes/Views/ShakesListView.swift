//
//  ShakesListView.swift
//  ShakesListView
//
//  Created by GMAN TECH on 9/7/21.
//

import SwiftUI

struct ShakesListView: View {
    var shake: Shake
    var shakes: [Shake] = shakesData
    
    @State var showingMain = true
    @State var showingFruity = false
    @State var showingEnergy = false
    @State var showingLight = false
    @State var showingDessert = false
    
    var body: some View {
        NavigationView {
            VStack {
                if showingMain == true {
                    List {
                        ForEach(shakes.shuffled()) { item in
                            NavigationLink(destination: DetailView(shake: item).navigationTitle(item.name)) {
                                ShakeRowView(shake: item)
                            }
                        }
                        HStack {
                            Spacer()
                            Text("There are no more smoothies available.")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .font(.callout)
                            Spacer()
                        }
                    }
                }
                if showingFruity == true {
                    List {
                        ForEach(shakes.shuffled()) { item in
                            if item.type == "Fruity" {
                                NavigationLink(destination: DetailView(shake: item).navigationTitle(item.name)) {
                                    ShakeRowView(shake: item)
                                }
                            }
                        }
                        HStack {
                            Spacer()
                            Text("There are no more fruity smoothies available.")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .font(.callout)
                            Spacer()
                        }
                    }
                }
                if showingEnergy == true {
                    List {
                        ForEach(shakes.shuffled()) { item in
                            if item.type == "Energy" {
                                NavigationLink(destination: DetailView(shake: item).navigationTitle(item.name)) {
                                    ShakeRowView(shake: item)
                                }
                            }
                        }
                        HStack {
                            Spacer()
                            Text("There are no more energy smoothies available.")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .font(.callout)
                            Spacer()
                        }
                    }
                }
                if showingLight == true {
                    List {
                        ForEach(shakes.shuffled()) { item in
                            if item.type == "Light" {
                                NavigationLink(destination: DetailView(shake: item).navigationTitle(item.name)) {
                                    ShakeRowView(shake: item)
                                }
                            }
                        }
                        HStack {
                            Spacer()
                            Text("There are no more light smoothies available.")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .font(.callout)
                            Spacer()
                        }
                    }
                }
                if showingDessert == true {
                    List {
                        ForEach(shakes.shuffled()) { item in
                            if item.type == "Dessert" {
                                NavigationLink(destination: DetailView(shake: item).navigationTitle(item.name)) {
                                    ShakeRowView(shake: item)
                                }
                            }
                        }
                        HStack {
                            Spacer()
                            Text("There are no more dessert smoothies available.")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .font(.callout)
                            Spacer()
                        }
                    }
                }
            }
                    .navigationTitle("Super Shakes!")
                    .toolbar(content: {
                        Menu {
                            Button(action: {
                                showingMain = true
                                showingFruity = false
                                showingEnergy = false
                                showingLight = false
                                showingDessert = false
                            }) {
                                if showingMain == true {
                                    Image(systemName: "checkmark")
                                }
                                Text("All")
                            }
                            Button(action: {
                                showingMain = false
                                showingFruity = true
                                showingEnergy = false
                                showingLight = false
                                showingDessert = false
                            }) {
                                if showingFruity == true {
                                    Image(systemName: "checkmark")
                                }
                                Text("Fruity")
                            }
                            Button(action: {
                                showingMain = false
                                showingFruity = false
                                showingEnergy = true
                                showingLight = false
                                showingDessert = false
                            }) {
                                if showingEnergy == true {
                                    Image(systemName: "checkmark")
                                }
                                Text("Energy")
                            }
                            Button(action: {
                                showingMain = false
                                showingFruity = false
                                showingEnergy = false
                                showingLight = true
                                showingDessert = false
                            }) {
                                if showingLight == true {
                                    Image(systemName: "checkmark")
                                }
                                Text("Light")
                            }
                            Button(action: {
                                showingMain = false
                                showingFruity = false
                                showingEnergy = false
                                showingLight = false
                                showingDessert = true
                            }) {
                                if showingDessert == true {
                                    Image(systemName: "checkmark")
                                }
                                Text("Dessert")
                            }
                        } label: {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                        }
                    })
        }
        }
    }


struct ShakesListView_Previews: PreviewProvider {
    static var previews: some View {
        ShakesListView(shake: shakesData[0])
    }
}
