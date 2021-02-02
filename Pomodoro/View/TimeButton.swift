//
//  TimeButton.swift
//  Pomodoro
//
//  Created by Christopher Perault on 1/31/21.
//

import SwiftUI

struct TimeButton: View {
    @EnvironmentObject var timerModel: PomodoroModel
    @EnvironmentObject var deviceModel: DeviceModel
    
    let buttonAlignment: Alignment = .center
    
    var startTime: Float
    
    var body: some View {
        Image(systemName: buttonString)
            .font(.largeTitle)
            .frame(width: buttonWidth, height: buttonHeight, alignment: buttonAlignment)
            .foregroundColor(buttonColor)
            .onTapGesture {
                timerModel.startTimer(chosenTime: startTime)
            }
            .onLongPressGesture {
                timerModel.resetTimer()
            }
            .opacity(buttonOpacity)
    }
}

// MARK: - Computed Properties

extension TimeButton {
    var buttonWidth: CGFloat {
        return deviceModel.deviceWidth
    }
    
    var buttonHeight: CGFloat {
        return deviceModel.deviceHeight
    }
    
    var buttonOpacity: Double {
        return (timerModel.timeIsActive) ? 0.3 : 1.0
    }
    
    var buttonString: String {
        switch startTime {
        case 10:
            return "10.circle.fill"
        case 25:
            return "25.circle.fill"
        case 50:
            return "50.circle.fill"
        default:
            return "10.circle.fill"
        }
    }
    
    var buttonColor: Color {
        switch startTime {
        case 10:
            return Color(.systemIndigo)
        case 25:
            return Color(.systemBlue)
        case 50:
            return Color(.systemPurple)
        default:
            return Color(.systemIndigo)
        }
    }
}
