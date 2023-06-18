//
//  HomeScreen.swift
//  SwiftProject
//
//  Created by MacLab7 on 11.6.23..
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color("themeDrawerColor")
                VStack{
                    HStack{
                        Spacer()
                        Text(" Welcome to Meal Spot")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        Spacer()
                        
                    }
                    Image("FitnessGirl2").resizable()
                        .aspectRatio(contentMode:.fill)
                        .frame(width:300,height: 300)
                        .cornerRadius(10)
                                   .shadow(color: Color.gray.opacity(0.5), radius: 4, x: 0, y: 2)
                        .padding(.vertical,31.0)
                    Spacer()

                }.padding(.vertical,100)
                Spacer()
            }
            .ignoresSafeArea() // 1
            .zIndex(0)

        }.navigationTitle("HomeScreen")
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
