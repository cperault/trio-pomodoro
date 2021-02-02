//
//  DeviceModel.swift
//  Pomodoro
//
//  Created by Christopher Perault on 2/2/21.
//

import SwiftUI

class DeviceModel: ObservableObject {
    @Published var deviceType: UIUserInterfaceIdiom = .unspecified
    @Published var deviceWidth: CGFloat = 0
    @Published var deviceHeight: CGFloat = 0
    
    func calculateDeviceWidth() {
        if UIDevice.current.userInterfaceIdiom == .phone {
            deviceWidth = UIScreen.main.bounds.width * 0.2
        } else {
            deviceWidth = UIScreen.main.bounds.width * 0.3
        }
    }
    
    func calculateDeviceHeight() {
        if UIDevice.current.userInterfaceIdiom == .phone {
            deviceHeight = UIScreen.main.bounds.height * 0.2
        } else {
            deviceHeight = UIScreen.main.bounds.height * 0.3
        }
    }
    
    func getDeviceType() {
        deviceType = UIDevice.current.userInterfaceIdiom
    }
}
