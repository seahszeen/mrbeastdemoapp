//
//  EndView.swift
//  Query
//
//  Created by T Krobot on 15/8/26.
//

import SwiftUI

struct EndView: View {
    var body: some View {
        VStack {
            Text("Mr Beast name:")
            Text("Jimmy Donaldson")
            Spacer()
                .frame(height: 20)
            Text("No. of Subscribers:")
            Text("399 000 000")
            Spacer()
                .frame(height: 20)
            Text("Location:")
            Text("USA")
        }
    }
}

#Preview {
    EndView()
}
