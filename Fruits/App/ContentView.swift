//
//  ContentView.swift
//  Fruits
//
//  Created by GeoSpark Mac 15 on 29/01/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: -- PROPERTIES
    @State private var isShowingSetting:Bool = false
    var fruits:[Fruit] = fruitsData
    
    // MARK: -- BODY
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ items in
                    NavigationLink(destination: FruitDetailView(fruit: items)) {
                        FruitRowView(fruit: items)
                            .padding(.vertical,4)
                    }
                }
            }//LIST
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isShowingSetting = true
                                    }, label: {
                                        Image(systemName: "slider.horizontal.3")
                                    })//:BUTTON
                                    .sheet(isPresented:$isShowingSetting){
                                        SettingView()
                                    }
            )
        }//NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
