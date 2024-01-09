//
//  FortDetailView.swift
//  day3Forts_Navigation
//
//  Created by Raghav Deo on 29/11/23.
//

import SwiftUI

struct FortDetailView: View {
    var fort:Fort
    @State private var zoomed:Bool = true
    var body: some View {
        VStack
        {
            Image(fort.imageURL).resizable().aspectRatio( contentMode: zoomed ? .fit : .fill)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                   
                }
            
            Text(fort.name).font(.largeTitle).padding()
            Text(fort.Description).font(.title3).padding()
            Spacer()
        }.navigationTitle(fort.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct FortDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack
        {
            FortDetailView(fort: Fort(name: "Jhansi Fort", imageURL: "J", Description: "Home To Rani Lakshmi Bai"))
        }
    }
}
