//
//  DetailView.swift
//  Sandstorm
//
//  Created by Ahmet Utlu on 12.02.2024.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            Image("panda")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .offset(x: screenWidth)
            
            VStack {
                HStack {
                    Spacer()
                    
                    CloseButton {
                        withAnimation {
                            presentationMode.wrappedValue.dismiss()
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
            .asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top))
        )
        .ignoresSafeArea()
    }
}

#Preview {
    DetailView()
}
