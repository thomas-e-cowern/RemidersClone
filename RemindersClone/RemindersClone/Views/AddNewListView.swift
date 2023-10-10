//
//  AddNewListView.swift
//  RemindersClone
//
//  Created by Thomas Cowern on 10/10/23.
//

import SwiftUI

struct AddNewListView: View {
    
    // MARK: - Properties
    @Environment(\.dismiss) private var dismiss
    @State private var name: String = ""
    @State private var selectedColor: Color = .yellow
    
    // MARK: - Body
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "line.3.horizontal.circle.fill")
                    .foregroundColor(selectedColor)
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toolbar(content: {
            ToolbarItem(placement: .principal) {
                Text("New List")
                    .font(.headline)
            }
            
            // Close view
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Close") {
                    dismiss()
                }
            }
            
            // Save new list and close view
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Done") {
                    // Save new list
                }
                .disabled(!isFormValid)
            }
        })
    }
    
    // MARK: - Computed Variables
    private var isFormValid: Bool {
        !name.isEmpty
    }
}

// MARK: Preview
#Preview {
    NavigationStack {
        AddNewListView()
    }
}
