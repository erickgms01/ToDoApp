//
//  HeaderView.swift
//  ToDoList
//
//  Created by Francisco Erick Souza Gomes on 19/04/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor: Color
    let offset: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))

            VStack{
                Text(title)
                    .font(.system(size: 55))
                    .foregroundColor(.white)
                    .bold()
        
                Text(subtitle)
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                
            }
            .padding(.top, 40)
        }
        
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: offset)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, backgroundColor: .blue, offset: -100)
    }
}
