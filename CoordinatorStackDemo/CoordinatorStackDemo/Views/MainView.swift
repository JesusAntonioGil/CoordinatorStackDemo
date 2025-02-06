//
//  MainView.swift
//  CoordinatorStackDemo
//
//  Created by Jesus Antonio Gil on 5/2/25.
//

import SwiftUI


struct MainView: View {
    @Environment(Coordinator<MainCoordinatorPages>.self) private var mainCoordinator
    
    var body: some View {
        List {
            Button("SignUp") {
                mainCoordinator.push(.signUp)
            }
            
            Button("Login") {
                mainCoordinator.push(.login(title: "Hello there"), type: .sheet)
            }
        }
    }
}

    
#Preview {
    MainView()
}
