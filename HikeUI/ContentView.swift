//
//  ContentView.swift
//  HikeUI
//
//  Created by Anup Saud on 2024-07-06.
//

import SwiftUI

struct ContentView: View {
    let hike = [Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
                Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
    Hike(name: "Tamanwas falls", photo: "tam", miles: 5)]
    var body: some View {
        NavigationStack{
            List(hike) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
                .navigationDestination(for: Hike.self) { hike in
                    HikeDetailsScreen(hike: hike)
                }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    let hike : Hike
    var body: some View {
        HStack(alignment:.center){
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 16,style: .continuous))
                .frame(width: 100 , height: 100)
            VStack(alignment:.leading){
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
