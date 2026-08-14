//
//  ContentView.swift
//  mangows
//
//  Created by T Krobot on 8/8/26.
//

import SwiftUI

struct Clue1View: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("Mr Beast has many subscribers")
                    .font(.largeTitle)
                Text(">380 000 000")
                    .font(.largeTitle)
                NavigationLink(destination: ContentView()) {
                    Text("Go back")
                }
            }
            .padding()
        }
    }

}
