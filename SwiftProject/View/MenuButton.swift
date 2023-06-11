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
        Button(action: {}, label: {
            HStack(spacing:15){
                Image(systemName: image)
                    .font(.title2)
                    .foregroundColor(selectedMenu == name ? .black : .white)
                Text(name)
                    .foregroundColor(selectedMenu == name ? .black : .white)
            }
            .padding(.horizontal)
            .padding(.vertical,12)
            .frame(width:200,alignment: .leading)
            .background(Color.white.opacity(selectedMenu == name ? 1 : 0))
            .cornerRadius(10)
        })
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        Home()
        
    }
}
