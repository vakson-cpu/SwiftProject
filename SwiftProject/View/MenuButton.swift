//
//  MenuButton.swift
//  SwiftProject
//
//  Created by MacLab7 on 11.6.23..
//

import SwiftUI

struct MenuButton: View {
    var name:String
    var image: String
    @Binding var selectedMenu:String
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selectedMenu = name
            }
        }, label: {
            HStack(spacing:15){
                Image(systemName: image)
                    .font(.title2)
                    .foregroundColor(selectedMenu == name ? .white : .black)
                Text(name)
                    .foregroundColor(selectedMenu == name ? .white : .black)
            }
            .padding(.horizontal)
            .padding(.vertical,12)
            .frame(width:200,alignment: .leading)
            .background(Color("themeBackground").opacity(selectedMenu == name ? 1 : 0))
            .cornerRadius(10)
        })
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        Home()
        
    }
}
