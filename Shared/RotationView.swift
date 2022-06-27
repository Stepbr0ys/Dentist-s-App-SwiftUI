//
//  RotationView.swift
//  Dentist
//
//  Created by Борис Ларионов on 15.01.2022.
//

import SwiftUI

struct RotationView: View {
    @AppStorage("selectedJaw") private var selectedJaw : JawEnum = .mouth3
    
    var body: some View {
        switch selectedJaw {
        case .mouth1:
            Image("Month1")
                .resizable()
                .aspectRatio(contentMode: .fit)
        case .mouth2:
            Image("Month2")
                .resizable()
                .aspectRatio(contentMode: .fit)
        case .mouth3:
            Image("Month3")
                .resizable()
                .aspectRatio(contentMode: .fit)
        case .mouth4:
            Image("Month4")
                .resizable()
                .aspectRatio(contentMode: .fit)
        case .mouth5:
            Image("Month5")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        
    }
}

struct RotationView_Previews: PreviewProvider {
    static var previews: some View {
        RotationView()
    }
}
