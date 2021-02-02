//
//  FruitDetailView.swift
//  Fruits
//
//  Created by GeoSpark Mac 15 on 01/02/21.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: -- PROPERTIES
    var fruit:Fruit
    
    // MARK: -- BODY

    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack(alignment: .center, spacing: 20){
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20){
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])

                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,20)
                        
                    }//:VStack
                    .padding(.horizontal,20)
                    .frame(maxWidth:640,alignment: .center)
                }//:VStack
                .navigationBarTitle(fruit.title, displayMode:.inline)
                .navigationBarHidden(true)
            }//:SCROLL
            .edgesIgnoringSafeArea(.top)
        }//:NAVIGATION
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
