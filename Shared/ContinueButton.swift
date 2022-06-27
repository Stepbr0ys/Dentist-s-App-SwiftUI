//
//  ContinueButton.swift
//  Dentist
//
//  Created by Борис Ларионов on 15.01.2022.
//

import SwiftUI

struct ContinueButton: View {
    @AppStorage("view") private var view : NowView = .homeView
    
    var body: some View {
        Button(action: {
            withAnimation {
                view = .denturesReview
            }
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: .infinity, height: 70)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6689604521, blue: 0.64207232, alpha: 1)))
                Text("Continue")
                    .tracking(1)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
            }
        }) 
    }
}

struct ContinueButton_Previews: PreviewProvider {
    static var previews: some View {
        ContinueButton()
    }
}
