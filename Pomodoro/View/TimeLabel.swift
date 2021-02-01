//
//  TimeLabel.swift
//  Pomodoro
//
//  Created by Christopher Perault on 1/31/21.
//

import SwiftUI

struct TimeLabel: View {
    @EnvironmentObject var timerModel: PomodoroModel

    let frameWidth: CGFloat = 100
    let frameHeight: CGFloat = 100
    let frameAlignment: Alignment = .center
    let fontStyle: Font = .largeTitle
    
    let timerHasFinishedString: String = "checkmark.circle.fill"
    
    var body: some View {
        ZStack {
            if timerModel.timeIsActive == true {
                Text(timeRemainingString)
                    .font(fontStyle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(width: frameWidth, height: frameHeight, alignment: frameAlignment)
                    .foregroundColor(Color(.systemGray))
                    
            } else {
                Image(systemName: timerHasFinishedString)
                    .font(fontStyle)
                    .frame(width: frameWidth, height: frameHeight, alignment: frameAlignment)
                    .foregroundColor(Color(.systemGreen))
            }
        }
        
    }
}

// MARK: - Computed Properties

extension TimeLabel {
    var timeRemainingString: String {
        String(timerModel.timeRemaining)
    }
}
