//
//  ColorPickerView.swift
//  RemindersClone
//
//  Created by Thomas Cowern on 10/10/23.
//

import SwiftUI

struct ColorPickerView: View {
    
    // MARK: - Properties
    @Binding var selectedColor: Color
    
    let colors: [Color] = [.red, .green, .blue, .yellow, .orange, .purple, .pink, .brown, .gray, .cyan, .mint]
    
    // MARK: - Body
    var body: some View {
        // Color picker
        HStack {
            ForEach(colors, id: \.self) { color in
                ZStack {
                    Circle().fill()
                        .foregroundStyle(Color(color))
                        .padding(2)
                    Circle()
                        .strokeBorder(selectedColor == color ? .gray : .clear, lineWidth: 4)
                        .scaleEffect(CGSize(width: 1.2, height: 1.2))
                }
                .onTapGesture {
                    selectedColor = color
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 100)
        .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
    }
}

// MARK: Preview
#Preview {
    ColorPickerView(selectedColor: .constant(.red))
}
