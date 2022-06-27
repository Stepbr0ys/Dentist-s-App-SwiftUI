//
//  PhotoScroller.swift
//  Dentist
//
//  Created by Борис Ларионов on 16.01.2022.
//

import SwiftUI

struct PhotoScroller: View {
    @AppStorage("selectedJaw") private var selectedJaw : JawEnum = .mouth3
    
    var body: some View {
            ScrollView (.horizontal) {
                    HStack {
                        ForEach(jaws) { item in
                            Image(item.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .padding(10)
                                .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(.secondary))
                        }
                        .padding(.horizontal, 13)
                        .offset(x: 0)
                        
                    }
                    .padding(.horizontal, 10)
                }
    }
}

struct PhotoScroller_Previews: PreviewProvider {
    static var previews: some View {
        PhotoScroller()
    }
}
