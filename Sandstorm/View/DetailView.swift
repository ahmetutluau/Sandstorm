//
//  DetailView.swift
//  Sandstorm
//
//  Created by Ahmet Utlu on 12.02.2024.
//

import SwiftUI

struct DetailView: View {
    @Binding var isVisible: Bool
    
    var body: some View {
        ZStack {
            Image("panda")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .clipped()
            
            VStack {
                HStack {
                    Spacer()
                    
                    CloseButton {
                        withAnimation {
                            isVisible.toggle()
                        }
                    }//: CloseButton
                    .padding(20)
                    .offset(y: 20)
                }//:HStack
                Spacer()
            }//: VStack
            
        }//: ZStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .transition(
            .asymmetric(
                insertion: .move(edge: .top),
                removal: .move(edge: .top)
            )
        )
        .ignoresSafeArea()
    }
}

#Preview {
    DetailView(isVisible: .constant(true))
}
