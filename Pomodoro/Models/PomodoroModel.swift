//
//  PomodoroModel.swift
//  Pomodoro
//
//  Created by Christopher Perault on 02/01/21.
//

import SwiftUI

class PomodoroModel: ObservableObject {
    @Published var timeIsActive: Bool = false
    @Published var startTime: Float = 0
    @Published var timeRemaining: Float = 0
    
    var timer: Timer?
    
    func startTimer(chosenTime: Float) {
        invalidateTimer()
        timeIsActive = true
        startTime = chosenTime
        timeRemaining = startTime
        timer = Timer.scheduledTimer(withTimeInterval: 60.0, repeats: true) {
            timer in self.handleTimerAction()
        }
    }
    
    func resetTimer() {
        invalidateTimer()
    }
    
    func invalidateTimer() {
        timeIsActive = false
        timer?.invalidate()
        startTime = 0
        timeRemaining = 0
    }
    
    func handleTimerAction() {
        if timeRemaining > 1 {
            reduceTime()
        } else {
            invalidateTimer()
        }
    }
    
    func reduceTime() {
        timeRemaining -= 1
    }
}
