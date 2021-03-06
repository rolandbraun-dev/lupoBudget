//
//  ContentView.swift
//  lupoBudget
//
//  Created by Roland Braun on 6/30/20.
//  Copyright © 2020 Roland Braun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentView: String = "homeView"
    
    var body: some View {
        
        VStack(spacing: 0) {
            if self.currentView == "homeView" {
                HomeView(currentView: $currentView)
            } else if self.currentView == "dollar" {
                Text("DOLLAR")
            } else if self.currentView == "settings" {
                SettingsView()
            }
                
            Spacer()
                
            TabBarView(currentView: $currentView)
            }
            .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum SFSymbols {
    static let home             = Image(systemName: "house")
    static let gear             = Image(systemName: "gear")
    static let dollar_fill      = Image(systemName: "dollarsign.circle.fill")
    static let dollar           = Image(systemName: "dollarsign.circle")
    static let euro             = Image(systemName: "eurosign.circle")
    static let slider           = Image(systemName: "slider.horizontal.3")
    static let info             = Image(systemName: "info")
    static let info_circle      = Image(systemName: "info.circle")
    static let chevron_right    = Image(systemName: "chevron.right")
    static let plus_circle_fill = Image(systemName: "plus.circle.fill")
    static let car_fill         = Image(systemName: "car.fill")
    static let checkmark_circle = Image(systemName: "checkmark.circle")
}

func collectLatestBookings() -> [String]{
    var result: [String] = []
    for currentNumber in 0...50 {
        result.append(String(currentNumber))
    }
    
    return result
}
