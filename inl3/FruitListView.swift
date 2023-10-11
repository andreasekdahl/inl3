//
//  ContentView.swift
//  inl3
//
//  Created by Andreas Ekdahl on 2023-10-11.
//
import SwiftUI

struct FruitListView: View {
    private let fruits: [(String, Color)] = [
        ("Äpple", .red),
        ("Banan", .yellow),
        ("Päron", .green)
    ]
                               
    var body: some View {
        NavigationStack {
            List(fruits, id: \.0) { fruitName, fruitColor in
                NavigationLink {
                    FruitView(fruitName: fruitName, fruitColor: fruitColor)

                } label: {
                    Text(fruitName)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView()
    }
}
