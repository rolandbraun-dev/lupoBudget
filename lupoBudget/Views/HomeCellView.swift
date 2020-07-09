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
                
            VStack {
                // Category icon
                SFSymbols.car_fill
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                // Date
                Text("22").font(.system(size: 20, weight: .bold))
                    .padding(EdgeInsets(top: 3, leading: 0, bottom: 0, trailing: 0))
                
                Text("January").font(.system(size: 7, weight: .light))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
                
                Spacer()
                
                Text("Some information")
                
                Spacer()
                
            HStack() {
                SFSymbols.dollar
                Text("358.00").padding()
            }
        }
            .frame(maxWidth: .infinity)
    
    }
    
}

struct HomeViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeCellView()
    }
}
