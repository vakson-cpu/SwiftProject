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
    @Namespace private var animation

    var body: some View {
        HStack(spacing:0){
            
            //Drawer
            Drawer(animation:animation)
            //Main View
            
            
            TabView(selection: $menuData.selectedMenu){
                Profile().tag("Profile")
                Account().tag("Account")
                HomeScreen().tag("Home")
                Registration().tag("Registration")
                Login().tag("Login")

            }.frame(width: UIScreen.main.bounds.width)
        }.frame(width: UIScreen.main.bounds.width)
            .offset(x: menuData.showerDrawer ?  125 : -125)
            .overlay(
                
                ZStack{
                    if !menuData.showerDrawer{
                        DrawerCloseButton(animation:animation)
                            .padding()
                    }
                },alignment: .topLeading
                    )
            .environmentObject(menuData)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
