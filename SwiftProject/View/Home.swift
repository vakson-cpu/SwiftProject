//
//  Home.swift
//  SwiftProject
//
//  Created by MacLab7 on 10.6.23..
//

import SwiftUI

struct Home: View {
    init(){
        UITabBar.appearance().isHidden=true
    }
    
    @StateObject var menuData = MenuViewModel()
    var body: some View {
        HStack(spacing:0){
            
            //Drawer
            Drawer()
            //Main View
            
            
            TabView{
                Text("Home")
            }.frame(width: UIScreen.main.bounds.width)
        }.frame(width: UIScreen.main.bounds.width)
            .offset(x:125)
        
            .environmentObject(menuData)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
