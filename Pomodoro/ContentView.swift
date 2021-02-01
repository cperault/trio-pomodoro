//
//  ContentView.swift
//  Pomodoro
//
//  Created by Christopher Perault on 02/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TimeBar()
            TimeLabel()
            HStack {
                TimeButton(startTime: 10)
                TimeButton(startTime: 25)
                TimeButton(startTime: 50)
            }
        }
    }
}
