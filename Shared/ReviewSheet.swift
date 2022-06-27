//
//  ReviewSheet.swift
//  Dentist
//
//  Created by Борис Ларионов on 15.01.2022.
//

import SwiftUI

struct ReviewSheet: View {
    @AppStorage("selectedJaw") private var selectedJaw : JawEnum = .mouth3
    
    var body: some View {
        VStack {
            CirclePicker()
                .padding(.bottom, 30)
            
            VStack (spacing: 30) {
                VStack (alignment: .leading) {
                    Text("Photo")
                        .tracking(1)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal, 20)
                    
                    PhotoScroller()
                        
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                .padding(.bottom, 30)
                
                VStack (alignment: .leading) {
                    Text("Components")
                        .tracking(1)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal, 20)
                    
                    ComponentsElement()
                        
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .leading)
            }
            
        }
        .padding()
        .padding(.bottom)
    }
}

struct ReviewSheet_Previews: PreviewProvider {
    static var previews: some View {
        ReviewSheet()
    }
}
