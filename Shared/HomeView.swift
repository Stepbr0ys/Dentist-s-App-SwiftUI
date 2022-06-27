//
//  HomeView.swift
//  Dentist
//
//  Created by Борис Ларионов on 15.01.2022.
//

import SwiftUI

struct HomeView: View {
    @State private var congratsAppear = false
    @AppStorage("view") private var view : NowView = .homeView
    
    var body: some View {
        ZStack {
            TeethAnimation()
                .offset(y: -150)
            
            CongratsSheet()
                .frame(maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea(.all)
                .offset(y: !congratsAppear ? 290 : 0)
        }
        .onAppear(perform: {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                congratsAppear = true
            }
        })
        .ignoresSafeArea(.all)
        .background(Color(#colorLiteral(red: 0.9531050324, green: 0.9531050324, blue: 0.9531050324, alpha: 1)))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
