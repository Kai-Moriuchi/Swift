//
//  startupApp.swift
//  startup
//
//  Created by Kai on 2021/08/18.
//

import SwiftUI

@main
struct startupApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
