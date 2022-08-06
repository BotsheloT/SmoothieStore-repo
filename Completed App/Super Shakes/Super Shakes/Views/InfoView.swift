//
//  InfoView.swift
//  Super Shakes
//
//  Created by GMAN TECH on 9/18/21.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Any app info can be shown here.")
            }
            .listStyle(.plain)
            .navigationTitle("Info")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
