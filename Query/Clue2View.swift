//
//  Clue2View.swift
//  Query
//
//  Created by T Krobot on 15/8/26.
//

import SwiftUI

struct Clue2View: View {
    // Receive the filtered results from Clue 1.
    let persons: [Persons]
    @State private var showPersonsList: Bool = false

    // `>` sorts subscriber counts from largest to smallest.
    private var sortedPersons: [Persons] {
        persons.sorted { $0.subscribers > $1.subscribers }
    }
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                    .frame(height:100)
                Text("🚨 CLUE 2 🚨")
                Text ("MrBeast has the most subscribers")
                Text ("Top 1 🥇")
                Button {
                    showPersonsList = true
                }label: {
                    Text("Sort")
                        .padding(7)
                        .bold()
                        .background(.red)
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                }
            }
            if showPersonsList {
                List {
                    ForEach(sortedPersons) { person in
                        VStack (alignment: .leading) {
                            Text(person.name)
                            Text(person.subscribers, format: .number)
                            Text(person.location)
                            
                        }
                    }
                }
                NavigationLink(destination: EndView()) {
                    Text("Find MrBeast")
                }
                .padding()
            }
        }
    }
    
    
}

#Preview {
    Clue2View(persons: [])
}
