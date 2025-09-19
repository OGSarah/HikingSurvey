//
//  ResponseView.swift
//  HikingSurvey
//
//  Created by Sarah Clark on 9/18/25.
//

import SwiftUI

struct ResponseView: View {
    var response: Response

    var body: some View {
        Text(response.text)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16)
            .background(RoundedRectangle(cornerRadius: 8)
                .fill(.white)
            )
    }
}

// MARK: Previews
#Preview("Light Mode") {
    ResponseView(response: Response(text: "I sure do love to hike!"))
     .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    ResponseView(response: Response(text: "I sure do love to hike!"))
     .preferredColorScheme(.dark)
}
