//
//  iOSSecurityTestApp.swift
//  iOSSecurityTestApp
//
//  Created by Humbarger, Dennis (D.) on 10/25/22.
//

import SwiftUI

@available(iOS 14.0, *)
@main
struct  IOSSecurityTestAppApp: App {
    var sv = SecurityVars();

    var body: some Scene {
        WindowGroup {
            ContentView();
        }
    }

}
