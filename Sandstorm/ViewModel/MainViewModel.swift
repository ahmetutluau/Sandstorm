//
//  MainViewModel.swift
//  Sandstorm
//
//  Created by Ahmet Utlu on 12.02.2024.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var isShowingDetailView = false
    @Published var isLocked = false

    func toggleLock() {
        withAnimation {
            isLocked.toggle()
        }
    }

    func toggleDetailView() {
        withAnimation {
            isShowingDetailView.toggle()
        }
    }
}
