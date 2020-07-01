//
//  TabBarView.swift
//  lupoBudget
//
//  Created by Roland Braun on 6/30/20.
//  Copyright © 2020 Roland Braun. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        
        HStack(spacing: 0) {
                TabBarItemView(symbol: SFSymbols.home, label: "Home")
                TabBarItemView(symbol: SFSymbols.dollarfill, label: "Dollar")
                TabBarItemView(symbol: SFSymbols.gear, label: "Settings")
            }
            .frame(maxWidth: .infinity)
            .background(Color(red: 28/255, green: 28/255, blue: 36/255))
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
