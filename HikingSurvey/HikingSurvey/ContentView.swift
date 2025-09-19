//
//  ContentView.swift
//  HikingSurvey
//
//  Created by Sarah Clark on 9/17/25.
//

import SwiftUI

struct ContentView: View {
    @State var responses: [Response] = []

    var body: some View {
        VStack {
            Text("Opinions on Hiking")
                .frame(maxWidth: .infinity)
                .font(.title)
                .padding(.top, 24)
            ScrollView {
                ForEach(responses) { response in
                    Text(response.text)
                }
            }
        }
        .onAppear {
            for response in Response.sampleResponses {
                responses.insert(Response(text: response), at: 0)
            }
        }
        .padding(.horizontal)
    }
}

// MARK: - Preview
#Preview("Light Mode") {
    ContentView()
    .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    ContentView()
    .preferredColorScheme(.dark)
}
