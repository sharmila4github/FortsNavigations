//
//  ContentView.swift
//  day3Forts_Navigation
//
//  Created by Raghav Deo on 29/11/23.
//



/*[Fort(name: "Chittorgarh Fort", imageURL: "C", Description: "Rajasthan – Fort With Many Waterbodies"),
        Fort(name: "Jhansi Fort", imageURL: "J", Description: "Home To Rani Lakshmi Bai"),
             Fort(name: "Gwalior Fort", imageURL: "G", Description: " An 8th Century Hill Fort"),Fort(name: "Madan Mahan Fort", imageURL: "M", Description: "Jabalpur – Intriguing With Its Roughness"),Fort(name: "Raigad Fort", imageURL: "R", Description: "Beautiful Fort By The Marathas")*/


import SwiftUI

struct ContentView: View {
    
    let forts = [Fort(name: "Chittorgarh Fort", imageURL: "C", Description: "Rajasthan – Fort With Many Waterbodies"),
                 Fort(name: "Jhansi Fort", imageURL: "J", Description: "Home To Rani Lakshmi Bai"),
                 Fort(name: "Gwalior Fort", imageURL: "G", Description: " An 8th Century Hill Fort"),Fort(name: "Madan Mahan Fort", imageURL: "M", Description: "Jabalpur – Intriguing With Its Roughness"),Fort(name: "Raigad Fort", imageURL: "R", Description: "Beautiful Fort By The Marathas")]
    var body: some View {
        NavigationStack
        {
            
                            List(forts)
                        {
                            fort in
            
                            NavigationLink {
                                FortDetailView(fort: fort)
                            } label: {
                                FortCell(fort: fort)
                            }
            
                        }
            
                    .navigationTitle("Forts")
            
        }//nav.Stack
         
        }//body
    }//Cont.view
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }




struct FortCell: View {
    var fort:Fort
    var body: some View {
        HStack
        {
            Image(fort.imageURL).resizable().aspectRatio( contentMode: .fit).frame(width: 100, height: 100).cornerRadius(26)
            VStack(alignment: .leading)
            {
                /*@START_MENU_TOKEN@*/Text(fort.name)/*@END_MENU_TOKEN@*/
                Text(fort.Description)
            }
        }
    }
}
