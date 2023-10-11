//
//  FruitView.swift
//  inl3
//
//  Created by Andreas Ekdahl on 2023-10-11.
//

import SwiftUI

struct FruitView: View {
    var fruitName: String
    var fruitColor: Color

    var body: some View {
        VStack {
            Circle()
                .fill(fruitColor)
                .frame(width: 80, height: 80)
                .shadow(radius: 5)
            Text("Fruit: \(fruitName)")
        }
        .navigationBarTitle(fruitName)
    }
}


struct FruitView_Previews: PreviewProvider {
    static var previews: some View {
        FruitView(fruitName: "Äpple", fruitColor: .red)
    }
}
