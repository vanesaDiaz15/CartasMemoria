//
//  ContentView.swift
//  PrimerProyecto
//
//  Created by Vanesa Díaz Baños on 11/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ForEach(0..<3){ row in
                HStack{
                    ForEach(0..<2){ column in
                        let flip = (column == 0 && row == 0) || (column == 1 && row == 2)
                        CardView(isFlipped: flip)
                    }
                }
            }
        }
        .padding()
        .foregroundColor(.blue)
    }
}

struct CardView:View {
    var isFlipped = true
    
    var body: some View{
        GeometryReader{ geometry in
            ZStack{
                if isFlipped{
                    RoundedRectangle (cornerRadius: 10.0)
                        .stroke()
                    RoundedRectangle (cornerRadius: 10.0)
                        .fill(Color.gray)
                    Text("🇪🇸").font(Font.system(size: min(geometry.size.height, geometry.size.width) - 20))
                }else {
                    RoundedRectangle (cornerRadius: 10.0)
                }
                
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
 
