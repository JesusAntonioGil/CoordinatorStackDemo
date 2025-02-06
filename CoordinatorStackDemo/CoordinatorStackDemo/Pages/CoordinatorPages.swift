//
//  CoordinatorPages.swift
//  CoordinatorStackDemo
//
//  Created by Jesus Antonio Gil on 5/2/25.
//

import SwiftUI


enum MainCoordinatorPages: Coordinatable {
    var id: UUID { .init() }
    
    case root
    case login(title: String)
    case signUp
    
    
    var body: some View {
        switch self {
            case .root:
                MainView()
            case .login(let title):
                CoordinatorStack(LoginCoordinatorPages.root(title: title))
            case .signUp:
                SignUpView()
        }
    }
}


enum LoginCoordinatorPages: Coordinatable {
    var id: UUID { .init() }
    
    case root(title: String)
    case forgotPassword
    
    
    var body: some View {
        switch self {
            case .root(let title):
                LoginView(title: title)
            case .forgotPassword:
                ForgotPasswordView()
        }
    }
}
