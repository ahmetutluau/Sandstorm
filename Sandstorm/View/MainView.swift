//
//  MainView.swift
//  Sandstorm
//
//  Created by Ahmet Utlu on 12.02.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = MainViewModel()

    var body: some View {
        ZStack {
            VStack(spacing: 10) {

                Image("panda")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: UIScreen.main.bounds.height * 0.3, alignment: .topLeading)
                    .clipped()
                
                HStack {
                    Spacer(minLength: 20)
                    
                    CustomButton(buttonText: viewModel.isLocked ? "Unlock" : "Lock") {
                        viewModel.toggleLock()
                    }//: CustomButton
                    
                    Spacer(minLength: 20)

                    CustomButton(buttonText: "Open from top", isEnabled: !viewModel.isLocked) {
                        viewModel.toggleDetailView()
                    }//: CustomButton
                    
                    Spacer(minLength: 20)

                }//: HStack
                .padding(.horizontal, 5)
                
                Spacer()
                
                HStack {
                    Spacer(minLength: 20)
                    
                    CustomButton(buttonText: "Open Full") {
                        viewModel.toggleDetailView()
                    }
                    
                    Spacer(minLength: 20)

                }//: CustomButton
                            
            }//: VStack
            .padding(.vertical, 60)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
            if viewModel.isShowingDetailView {
                DetailView(isVisible: $viewModel.isShowingDetailView)
            }
            
        }//: ZStack
        
    }
}

#Preview {
    MainView()
}
