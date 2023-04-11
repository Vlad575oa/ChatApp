//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by user on 10.04.2023.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
  init() {
    FirebaseApp.configure()
  }
    var body: some Scene {
        WindowGroup {
          ContentView()
        }
    }
}
