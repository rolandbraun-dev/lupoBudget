//
//  HomeView.swift
//  lupoBudget
//
//  Created by Roland Braun on 6/30/20.
//  Copyright © 2020 Roland Braun. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var currentView: String
    
    @State private var showNewEntryView: Bool = false
    
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
                    
                    ZStack {
                        
                        // Circle as background
                        Circle()
                            .fill(Color.white)
                            .frame(width:55, height: 55)
                        
                        Button(action: {
                            // Activate modal-view
                            self.showNewEntryView = true
                            
                        }) { SFSymbols.plus_circle_fill }
                            .font(.system(size: 60, weight: .ultraLight))
                            
                            // Show modal-view
                            .sheet(isPresented: self.$showNewEntryView){NewStatementView( showNewEntryView: self.$showNewEntryView)}
                    
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 25, trailing: 25))
                }
            }
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(currentView: Binding.constant("newEntryView"))
    }
}
