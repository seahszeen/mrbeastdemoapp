//
//  Clue2View.swift
//  Query
//
//  Created by T Krobot on 15/8/26.
//

import SwiftUI
import SwiftData

struct Clue2View: View {
    @Environment(\.modelContext) var modelContext
    @Query(filter: #Predicate<Persons> { $0.subscribers > 380_000_000 }, sort: \Persons.subscribers, order: .reverse) var persons: [Persons]
    @State private var showPersonsList: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height:100)
            Text("🚨 CLUE 2 🚨")
            Text ("MrBeast has the most subscribers")
            Text ("Top 1 🥇")
            Button {
                loadSampleData()
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
                    ForEach(persons) { person in
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
    
    
    func loadSampleData() {
        if !persons.isEmpty {
            return
        }
        for person in samplePeople {
            modelContext.insert(person)
        }
    }
}

#Preview {
    Clue2View()
}
