//
//  AddNewListView.swift
//  RemindersClone
//
//  Created by Thomas Cowern on 10/10/23.
//

import SwiftUI

struct AddNewListView: View {
    
    // MARK: - Properties
    @State private var name: String = ""
    @State private var selectedColor: Color = .yellow
    
    // MARK: - Body
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "line.3.horizontal.circle.fill")
                    .font(.system(size: 100))
                TextField("List Name", text: $name)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
            }
            .padding(30)
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            
            ColorPickerView(selectedColor: $selectedColor)
            
            Spacer()
        }
    }
}

// MARK: Preview
#Preview {
    AddNewListView()
}
