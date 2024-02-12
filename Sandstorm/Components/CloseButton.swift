//
//  CloseButton.swift
//  Sandstorm
//
//  Created by Ahmet Utlu on 12.02.2024.
//

import SwiftUI

struct CloseButton: View {
    var action: () -> Void

    var body: some View {
        Button(action: {
            self.action()
        }) {
            Image(systemName: "xmark")
                .foregroundColor(.white)
                .padding()
                .background(Color.gray)
                .clipShape(Circle())
        }
    }
}
