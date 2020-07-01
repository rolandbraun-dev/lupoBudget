//
//  HomeViewCell.swift
//  lupoBudget
//
//  Created by Roland Braun on 7/1/20.
//  Copyright © 2020 Roland Braun. All rights reserved.
//

import SwiftUI

struct HomeCellView: View {
    
    var body: some View {
        
        HStack() {
                SFSymbols.dollar
                
                Spacer()
                
                Text("Some information")
                
                Spacer()
                
                SFSymbols.chevron_right
                    .foregroundColor(Color.blue)
        }
            .frame(maxWidth: .infinity)
    
    }
    
}

struct HomeViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeCellView()
    }
}
