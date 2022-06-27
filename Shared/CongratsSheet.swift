//
//  CongratsSheet.swift
//  Dentist
//
//  Created by Борис Ларионов on 15.01.2022.
//

import SwiftUI

struct CongratsSheet: View {
    @State private var congratsAppear = false
    @State private var textAppear = false
    @State private var buttonAppear = false
    
    var body: some View {
        VStack (spacing: 40){
            Text("Congrats!")
                .tracking(1)
                .font(.largeTitle)
                .fontWeight(.bold)
                .scaleEffect(1.2)
                .scaleEffect(!congratsAppear ? 0 : 1)
            
            Text("Now you can view information\nabout patients and their teeth!")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .font(.callout)
                .foregroundColor(.gray)
                .scaleEffect(1.3)
                .scaleEffect(!textAppear ? 0 : 1)
            
            ContinueButton()
                .scaleEffect(!buttonAppear ? 0 : 1)
    
        }
        .onAppear(perform: {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.5).delay(0.4)) {
                congratsAppear = true
            }
            withAnimation(.spring(response: 0.5, dampingFraction: 0.5).delay(0.6)) {
                textAppear = true
            }
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7).delay(0.8)) {
                buttonAppear = true
            }
        })
        .frame(height: 290)
        .padding(.horizontal)
        .background(.white)
        .cornerRadius(30)
    }
}

struct CongratsSheet_Previews: PreviewProvider {
    static var previews: some View {
        CongratsSheet()
    }
}
