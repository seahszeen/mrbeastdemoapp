//
//  ContentView.swift
//  Query
//
//  Created by T Krobot on 6/8/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var persons: [Persons]
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height:100)
            Text("🚨 BREAKING NEWS 🚨")
            Text ("MrBeast has disappeared! 😱")
            Text ("He is hiding somewhere is our database...")
            Button {
        
            }label: {
                Text("Clue 1")
                    .padding(7)
                    .bold()
                    .background(.red)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
            }
            
        }
            NavigationStack {
                        List {
                            ForEach(persons) { person in
                                VStack (alignment: .leading) {
                                    Text(person.name)
                                    Text(person.subscribers, format: .number)
                                    Text(person.location)
                                    
                                }
                            }
                        }
                        .navigationTitle("Persons")
                        .toolbar {
                            Button("Show Persons", action: loadSampleData)
                        }
                    }
                    .padding()
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
        ContentView()
    }
