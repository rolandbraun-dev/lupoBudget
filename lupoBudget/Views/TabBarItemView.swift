//
//  TabBarItemView.swift
//  lupoBudget
//
//  Created by Roland Braun on 6/30/20.
//  Copyright © 2020 Roland Braun. All rights reserved.
//

import SwiftUI

struct TabBarItemView: View {
    
    let symbol: Image
    let label: String
    
    var body: some View {
        
        VStack(spacing: 0){
            symbol
                .resizable()
                .frame(width: 25, height: 25)
                .aspectRatio(contentMode: .fill)
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                //.foregroundColor(Color.white)
                .foregroundColor(Color(red: 92/255, green: 92/255, blue: 104/255))
                //.background(Color.yellow)
            
            Text(label)
                .padding(.top, 0.0)
                .font(.footnote)
                //.foregroundColor(Color.white)
                .foregroundColor(Color(red: 92/255, green: 92/255, blue: 104/255))
                //.background(Color.blue)
                .frame(maxWidth: .infinity)
        }
        //.background(Color.pink)
    }
}

struct TabBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItemView(symbol: Image(systemName: "house"), label: "Home")
    }
}
