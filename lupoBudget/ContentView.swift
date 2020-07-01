//
//  ContentView.swift
//  lupoBudget
//
//  Created by Roland Braun on 6/30/20.
//  Copyright © 2020 Roland Braun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
                HomeView()
                
                Spacer()
                
                TabBarView()
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
    static let home     = Image(systemName: "house")
    static let gear     = Image(systemName: "gear")
    static let dollarfill   = Image(systemName: "dollarsign.circle.fill")
}
