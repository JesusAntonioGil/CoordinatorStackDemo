//
//  LoginView.swift
//  CoordinatorStackDemo
//
//  Created by Jesus Antonio Gil on 5/2/25.
//

import SwiftUI


struct LoginView: View {
    @Environment(Coordinator<LoginCoordinatorPages>.self) private var loginCoordinator
    @Environment(Coordinator<MainCoordinatorPages>.self) private var mainCoordinator
    let title: String
    
    
    var body: some View {
        List {
            Button("Forgot Password") {
                loginCoordinator.push(.forgotPassword)
            }
            
            Button("Pop") {
                mainCoordinator.pop(.sheet)
            }
        }
        .navigationTitle(title)
    }
}


#Preview {
    LoginView(title: "Login")
}
