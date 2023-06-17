//
//  Drawer.swift
//  SwiftProject
//
//  Created by MacLab7 on 10.6.23..
//

import SwiftUI

struct Drawer: View {
    @EnvironmentObject var menuData:MenuViewModel
    var animation  : Namespace.ID
    

    let gold = UIColor(hex: "#ffe700ff")

    var body: some View {
        VStack{
            Text("Hello Vahid")
                .foregroundColor(.white)
                .font(.title3)
            
            HStack{
                Image("profilePicture.png").resizable()
                    .aspectRatio(contentMode:.fill)
                    .frame(width:65,height: 65)
                    .clipShape(Circle())
                    .padding(.horizontal,20)
                    .padding(.top,20)
                
                Spacer()
                if  menuData.showerDrawer{
                    DrawerCloseButton(animation:animation)
                }

            }
            VStack(spacing:30){
                MenuButton(name:"Home",image:"list.dash.header.rectangle",selectedMenu: $menuData.selectedMenu )
                MenuButton(name:"Profile",image:"circle",selectedMenu: $menuData.selectedMenu )
                MenuButton(name:"Account",image:"person",selectedMenu: $menuData.selectedMenu )
                MenuButton(name:"Registration",image:"person",selectedMenu: $menuData.selectedMenu )
                MenuButton(name:"Login",image:"person",selectedMenu: $menuData.selectedMenu )
            }.padding(.top,15)
            Divider().background(Color.white)
                .padding(.horizontal,25)
                .padding(.vertical,15)
            Spacer()
            MenuButton(name:"Sign-out",image:"rectangle.portrait.and.arrow.right",selectedMenu: $menuData.selectedMenu )
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
struct DrawerCloseButton : View{
    @EnvironmentObject var menuData : MenuViewModel
    var animation : Namespace.ID

    var body: some View {
        
        Button(action: {withAnimation(.easeInOut){
            menuData.showerDrawer.toggle()
        }}, label: {
            
            VStack{
                Capsule().fill(menuData.showerDrawer ? Color.white : Color.black)
                    .frame(width:35,height:3)
                    
                VStack(spacing: 5 ){
                    Capsule()
                        .fill(menuData.showerDrawer ? Color.white : Color.black)                        .frame(width: 35, height:3)
               
                    Capsule()
                        .fill(menuData.showerDrawer ? Color.white : Color.black)                        .frame(width: 35, height:3)

                }
            }
        }).scaleEffect(0.8)
            .padding(.horizontal,10)
            .matchedGeometryEffect(id: "MENU_BUTTON", in: animation)
    }
    
}
