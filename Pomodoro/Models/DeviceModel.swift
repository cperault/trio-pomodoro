//
//  DeviceModel.swift
//  Pomodoro
//
//  Created by Christopher Perault on 2/2/21.
//

import SwiftUI

class DeviceModel: ObservableObject {
    @Published var deviceWidth: CGFloat = 0
    @Published var deviceHeight: CGFloat = 0
    
    init() {
        calculateDeviceWidth()
        calculateDeviceHeight()
    }
    
    func calculateDeviceWidth() {
        if UIDevice.current.userInterfaceIdiom == .phone {
            deviceWidth = UIScreen.main.bounds.width * 0.25
        } else {
            deviceWidth = UIScreen.main.bounds.width * 0.30
        }
    }
    
    func calculateDeviceHeight() {
        if UIDevice.current.userInterfaceIdiom == .phone {
            deviceHeight = UIScreen.main.bounds.height * 0.20
        } else {
            deviceHeight = UIScreen.main.bounds.height * 0.30
        }
    }
}
