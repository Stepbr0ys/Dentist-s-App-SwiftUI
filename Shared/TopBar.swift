//
//  TopBar.swift
//  Dentist
//
//  Created by Борис Ларионов on 16.01.2022.
//

import SwiftUI

struct TopBar: View {
    @AppStorage("view") private var view : NowView = .homeView
    
    var body: some View {
        HStack {
            Button (action: {
                withAnimation {
                    view = .homeView
                }
                
            }, label: {
                ZStack {
                    RoundedRectangle (cornerRadius: 10, style: .continuous)
                        .frame(width: 50)
                    .foregroundColor(.white)
                    
                    Image(systemName: "chevron.left")
                        .font(.system(size: 20))
                        .foregroundColor(.primary)
                }
            })
            
            Spacer()
            
            Text("Dentures review")
                .font(.title3)
                .fontWeight(.bold)
            
            Spacer()
            
            ZStack {
                RoundedRectangle (cornerRadius: 10, style: .continuous)
                    .frame(width: 50)
                .foregroundColor(.white)
                
                VStack (spacing: 5){
                    Circle()
                        .foregroundColor(.primary)
                    .frame(width: 5, height: 5)
                    Circle()
                        .foregroundColor(.primary)
                    .frame(width: 5, height: 5)
                    Circle()
                        .foregroundColor(.primary)
                    .frame(width: 5, height: 5)
                }
            }
        }
        .frame(height: 50)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
