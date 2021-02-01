//
//  TimeBar.swift
//  Pomodoro
//
//  Created by Christopher Perault on 02/01/21.
//

import SwiftUI

struct TimeBar: View {
    @EnvironmentObject var timerModel: PomodoroModel
    
    let width: CGFloat = 5
    let height: CGFloat = 350
    let cornerRadius: CGFloat = 5
    let frameAlignment: Alignment = .center
    
    var body: some View {
        ZStack {
            Spacer()
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(Color(.systemGray5))
                .frame(width: width, height: height, alignment: frameAlignment)
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundColor(progressBarColor)
                    .frame(width: width, height: progressBarHeight, alignment: frameAlignment)
            }
            .frame(width: width, height: height, alignment: frameAlignment)
        }
    }
}

// MARK: - Computed Properties

extension TimeBar {
    var progressBarHeight: CGFloat {
        if timerModel.timeIsActive == true {
            return CGFloat(timerModel.timeRemaining / timerModel.startTime * 350)
        } else {
            return 0
        }
    }
    
    var progressBarColor: Color {
        if timerModel.startTime == 10 {
            return Color(.systemIndigo)
        } else if timerModel.startTime == 25 {
            return Color(.systemBlue)
        } else if timerModel.startTime == 50 {
            return Color(.systemPurple)
        } else {
            return Color(.systemGreen)
        }
    }
}
