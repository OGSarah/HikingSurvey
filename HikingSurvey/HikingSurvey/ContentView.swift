//
//  ContentView.swift
//  HikingSurvey
//
//  Created by Sarah Clark on 9/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Opinions on Hiking")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding(.top, 24)
        }
        .padding()
    }
}

#Preview("Light Mode") {
    ContentView()
    .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    ContentView()
    .preferredColorScheme(.dark)
}
