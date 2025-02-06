//
//  CoordinatorStackDemoApp.swift
//  CoordinatorStackDemo
//
//  Created by Jesus Antonio Gil on 5/2/25.
//

import SwiftUI


@main
struct CoordinatorStackDemoApp: App {
    
    var body: some Scene {
        WindowGroup {
            CoordinatorStack(MainCoordinatorPages.root)
        }
    }
}
