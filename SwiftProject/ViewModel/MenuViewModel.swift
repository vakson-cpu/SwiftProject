//
//  MenuViewModel.swift
//  SwiftProject
//
//  Created by MacLab7 on 11.6.23..
//
import SwiftUI

class MenuViewModel:ObservableObject{
    @Published var selectedMenu = "Home"
    
    @Published var showerDrawer = false
}


