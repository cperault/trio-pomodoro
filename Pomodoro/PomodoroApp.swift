//
//  PomodoroApp.swift
//  Pomodoro
//
//  Created by Christopher Perault on 02/01/21.
//

import SwiftUI

@main
struct PomodoroApp: App {
    @StateObject var timerModel: PomodoroModel = PomodoroModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(timerModel)
        }
    }
}
