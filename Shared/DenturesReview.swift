//
//  DenturesReview.swift
//  Dentist
//
//  Created by Борис Ларионов on 15.01.2022.
//

import SwiftUI

struct DenturesReview: View {
    @State private var topBarAnimation = false
    @State private var sheetAppear = false
    
    var body: some View {
        ZStack (alignment: .bottom) {
            
            
            Color(#colorLiteral(red: 0.9531050324, green: 0.9531050324, blue: 0.9531050324, alpha: 1))
            
            ZStack {
                RoundedRectangle(cornerRadius: 50, style: .continuous)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width, height: 700)
                ReviewSheet()
                    .cornerRadius(20)
                    .opacity(!topBarAnimation ? 0 : 1)
            }
            .offset(y: !sheetAppear ? 700 : 0)

            TopBar().padding(.horizontal, 30)
                .offset(y: -730)
                .opacity(!topBarAnimation ? 0 : 1)
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea(.all)
        .onAppear {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                sheetAppear = true
            }
            
            withAnimation(.spring(response: 1, dampingFraction: 0.7).delay(0.5)) {
                topBarAnimation = true
            }
        }
    }
}

struct DenturesReview_Previews: PreviewProvider {
    static var previews: some View {
        DenturesReview()
    }
}
