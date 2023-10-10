//
//  ContentView.swift
//  RemindersClone
//
//  Created by Thomas Cowern on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, All!")
                
                Spacer()
                
                Button {
                    isPresented = true
                } label: {
                    Text("Add List")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.headline)
                }
            }
            .padding()
            .sheet(isPresented: $isPresented, content: {
                NavigationView {
                    AddNewListView { name, color in
                        // save to core data
                    }
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
