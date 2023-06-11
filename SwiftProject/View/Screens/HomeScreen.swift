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
            Text("Home Screen ").navigationTitle("Home")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
