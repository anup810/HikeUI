//
//  HikeDetailsScreen.swift
//  HikeUI
//
//  Created by Anup Saud on 2024-07-06.
//

import SwiftUI

struct HikeDetailsScreen: View {
    let hike : Hike
    @State private var zommed: Bool = false
    var body: some View {
        VStack{
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zommed ? .fill: .fit)
                .onTapGesture {
                    withAnimation {
                        zommed.toggle()
                    }
                 
                    
                }
            Text(hike.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }.navigationTitle(hike.name)
            .navigationBarTitleDisplayMode(.inline)
      
    }
}

#Preview {
    NavigationStack{
        HikeDetailsScreen(hike: Hike(name: "Salmonberry Trail", photo: "sal", miles: 6))
    }
}
