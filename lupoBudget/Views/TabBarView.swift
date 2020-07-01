//
//  TabBarView.swift
//  lupoBudget
//
//  Created by Roland Braun on 6/30/20.
//  Copyright © 2020 Roland Braun. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    @Binding var currentView: String
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            TabBarItemView(symbol: SFSymbols.home, label: "Home", forView: "home", currentView: $currentView)
                .onTapGesture {
                    self.currentView = "home"
                }
            
            TabBarItemView(symbol: SFSymbols.dollar, label: "Dollar", forView: "dollar", currentView: $currentView)
                .onTapGesture {
                     self.currentView = "dollar"
                }
            
            TabBarItemView(symbol: SFSymbols.gear, label: "Settings", forView: "settings", currentView: $currentView)
                .onTapGesture {
                     self.currentView = "settings"
                }
            
            }
            .frame(maxWidth: .infinity)
            //.background(Color(red: 28/255, green: 28/255, blue: 36/255))
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(currentView: Binding.constant("home"))
    }
}
