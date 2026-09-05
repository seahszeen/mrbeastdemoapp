//
//  ContentView.swift
//  mangows
//
//  Created by T Krobot on 8/8/26.
//

import SwiftUI
import SwiftData

struct Clue1View: View {
    @Environment(\.modelContext) var modelContext
    @Query(filter: #Predicate<Persons> { $0.subscribers > 380_000_000}) private var persons: [Persons]
    @State var showPersonsList: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                    .frame(height:100)
                Text("🚨 CLUE 1 🚨")
                Text ("MrBeast has many subscribers")
                Text ("> 380 000 000")
                Button {
                    showPersonsList = true
                }label: {
                    Text("Filter")
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

                // restored your previous NavigationLink, and passing in persons
                NavigationLink(destination: Clue2View(persons: persons)) {
                    Text("Clue 2")
                }
                
                .padding()
            }
        }
    }
    
}
#Preview {
    Clue1View()
}
