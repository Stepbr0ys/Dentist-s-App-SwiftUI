//
//  ContentView.swift
//  Shared
//
//  Created by Борис Ларионов on 15.01.2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("view") private var view : NowView = .homeView
    
    var body: some View {
        switch view {
        case .homeView:
            HomeView()
        case .denturesReview:
            DenturesReview()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
