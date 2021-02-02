//
//  TimeLabel.swift
//  Pomodoro
//
//  Created by Christopher Perault on 1/31/21.
//

import SwiftUI

struct TimeLabel: View {
    @EnvironmentObject var timerModel: PomodoroModel
    @EnvironmentObject var deviceModel: DeviceModel
    
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
    var frameWidth: CGFloat {
        return deviceModel.deviceWidth
    }
    
    var frameHeight: CGFloat {
        return deviceModel.deviceHeight
    }
    
    var timeRemainingString: String {
        String(timerModel.timeRemaining)
    }
}
