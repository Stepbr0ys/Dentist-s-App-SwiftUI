//
//  ComponentsElement.swift
//  Dentist
//
//  Created by Борис Ларионов on 16.01.2022.
//

import SwiftUI

struct ComponentsElement: View {
    var body: some View {
        HStack (spacing: 20) {
            ZStack {
                Rectangle()
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6689604521, blue: 0.64207232, alpha: 1)))
                
                Image("Tooth2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
            }
            .frame(width: 50, height: 50)
            .cornerRadius(10)
            
            VStack (alignment: .leading, spacing: 0){
                Text("Tooth")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("Dental prosthetics")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 20))
                .padding(.trailing, 40)
        }
        .padding(10)
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(.secondary))
        .padding(.horizontal, 20)
    }
}

struct ComponentsElement_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsElement()
    }
}
