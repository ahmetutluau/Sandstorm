//
//  MainView.swift
//  Sandstorm
//
//  Created by Ahmet Utlu on 12.02.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = MainViewModel()
    let screenHeight = UIScreen.main.bounds.height

    var body: some View {
        VStack(spacing: 5) {
            
            ZStack {
              Image("panda")
                .resizable()
                .frame(width: 300, height: screenHeight * 0.3)
              Rectangle()
                    .fill(.white)
                .frame(width: 150, height: screenHeight * 0.3)
                .offset(x: 75)
            }//: ZStack
            .offset(x: 75)


                        
            HStack {
                CustomButton(buttonText: viewModel.isLocked ? "Unlock" : "Lock") {
                    viewModel.toggleLock()
                }//: CustomButton
                
                CustomButton(buttonText: "Open from top", isEnabled: !viewModel.isLocked) {
                    viewModel.toggleDetailView()
                }//: CustomButton
            }//: HStack
            .padding(.horizontal, 5)
            
            Spacer()
            
            CustomButton(buttonText: "Open Full") {
                viewModel.toggleDetailView()
            }//: CustomButton
                        
        }//: VStack
        .padding(.vertical, 60)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .fullScreenCover(isPresented: $viewModel.isShowingDetailView) {
            DetailView()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    MainView()
}
