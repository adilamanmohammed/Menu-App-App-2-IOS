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
//            Spacer()
            Image("menuIcon2").resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(.leading, 3.0)
                .frame(height: 30)
            
                Text("Sushi Menu").italic()
                    .multilineTextAlignment(.leading)
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
