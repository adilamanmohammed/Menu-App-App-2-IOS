//
//  ContentView.swift
//  Menu App
//
//  Created by Adil Aman Mohammed on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        HStack{
            Text("   Sushi Menu")
                .font(.title)
                .bold()
                .fontWeight(.heavy)
            Spacer()
        }
        List(menuItems){ item in
            
            MenuListRow(item: item)
        
            
        }.listStyle(.plain)
            .onAppear(){
                //Call for Data
                menuItems = dataService.getData()
            }
    }
}

#Preview {
    ContentView()
}
