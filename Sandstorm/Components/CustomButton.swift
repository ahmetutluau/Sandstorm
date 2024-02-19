//
//  CustomButton.swift
//  Sandstorm
//
//  Created by Ahmet Utlu on 12.02.2024.
//

import SwiftUI

struct CustomButton: View {
    var buttonText: String
    var isEnabled: Bool = true
    var action: () -> Void

    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(buttonText)
                .foregroundColor(.white)
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
        }
        .frame(minWidth: 0, maxWidth: .infinity) 
        .frame(height: 56)
        .background(isEnabled ? Color.blue : Color.gray.opacity(0.5))
        .cornerRadius(18)
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color.indigo, lineWidth: 3)
        )
        .blur(radius: isEnabled ? 0 : 1)
        .disabled(!isEnabled)
    }
}

#Preview {
    CustomButton(buttonText: "Click", action: {print("sdssa")})
        .previewLayout(.sizeThatFits)
        .padding(.horizontal, 20)
}
