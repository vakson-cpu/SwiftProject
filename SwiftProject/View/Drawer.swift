//
//  Drawer.swift
//  SwiftProject
//
//  Created by MacLab7 on 10.6.23..
//

import SwiftUI

struct Drawer: View {
    @EnvironmentObject var menuData:MenuViewModel
    let gold = UIColor(hex: "#ffe700ff")
    var body: some View {
        VStack{
            HStack{
                Image("profilePicture.png").resizable()
                    .aspectRatio(contentMode:.fill)
                    .frame(width:65,height: 65)
                
                    .clipShape(Circle())

                Spacer()
            }
            
            MenuButton(name:"Catalogue",image:"enevelop.fill",selectedMenu: $menuData.selectedMenu )
                .padding(.top,30)
            Spacer()
        }.frame(width:251.0)
            .background(Color("DrawerBackgroundColor")
            .ignoresSafeArea(.all,edges:.vertical))
    }
}

struct Drawer_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
