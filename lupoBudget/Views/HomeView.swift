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
        
        NavigationView {
                List(0 ..< collectLatestBookings().count) { _ in
                    HomeCellView()
                }
                .navigationBarTitle("Home")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
