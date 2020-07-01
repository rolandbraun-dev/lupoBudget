//
//  HomeView.swift
//  lupoBudget
//
//  Created by Roland Braun on 6/30/20.
//  Copyright © 2020 Roland Braun. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    let bookings = collectLatestBookings()
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                    List(0 ..< collectLatestBookings().count) { _ in
                        HomeCellView()
                    }
                    .navigationBarTitle("Home")
            }
            
            // Position +Button in the bottem right corner
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                      //
                    }) { SFSymbols.plus_circle_fill }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 25, trailing: 25))
                        .font(.system(size: 60, weight: .ultraLight))
                }
            }
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
