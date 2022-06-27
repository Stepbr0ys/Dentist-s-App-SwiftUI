//
//  CirclePicker.swift
//  Dentist
//
//  Created by Борис Ларионов on 15.01.2022.
//

import SwiftUI

struct CirclePicker: View {
    @AppStorage("selectedJaw") private var selectedJaw : JawEnum = .mouth3
    
    @State private var offX : CGFloat = 0
    @State private var offY : CGFloat = 0
    
    var body: some View {
        
        ZStack {
            RotationView()
                .frame(width: 200, height: 200)
                .offset(y: -80)
            
            //Text("offX \(offX)")
            Circle()
                    .stroke(LinearGradient(colors: [Color(#colorLiteral(red: 0.9498075843, green: 0.6392495036, blue: 0.5988911986, alpha: 1)), Color(#colorLiteral(red: 0.9498075843, green: 0.6392495036, blue: 0.5988911986, alpha: 1)).opacity(0)], startPoint: .bottom, endPoint: UnitPoint(x: 0.5, y: 0.3)), style: .init(lineWidth: 9, lineCap: .round, lineJoin: .round, miterLimit: 3))
                .frame(width: 320, height: 400)
            .rotation3DEffect(Angle(degrees: 75), axis: (x: 1, y: 0, z: 0))
            .frame(maxHeight: 300)
            
            ZStack {
                Circle()
                    .stroke(Color(#colorLiteral(red: 0.9498075843, green: 0.6392495036, blue: 0.5988911986, alpha: 1)), style: .init(lineWidth: 4, lineCap: .round, lineJoin: .round, miterLimit: 4))
                    .frame(width: 40, height: 40)
                    .offset(y: 66)
                    .overlay(Circle().fill(.white).frame(width: 36, height: 36).offset(y: 66))
                HStack (spacing: 3){
                    Image(systemName: "chevron.left")
                        .font(.system(size: 13))
                        .foregroundColor(Color(#colorLiteral(red: 0.9498075843, green: 0.6392495036, blue: 0.5988911986, alpha: 1)))
                        
                    
                    Image(systemName: "chevron.right")
                        .font(.system(size: 13))
                        .foregroundColor(Color(#colorLiteral(red: 0.9498075843, green: 0.6392495036, blue: 0.5988911986, alpha: 1)))
                        
                }
                .offset(y: 66)
                    
            }
            .offset(x: offX, y: offY)
            .gesture(
                DragGesture ()
                    .onChanged({ value in
                        if value.translation.width < 0 && value.translation.width > -150 {
                            self.offX =  value.translation.width
                            self.offY = value.translation.width / 8
                        }
                        
                        if value.translation.width > 0 && value.translation.width < 150 {
                            self.offX =  value.translation.width
                            self.offY = -(value.translation.width / 8)
                        }
                        withAnimation {
                            if (offX >= -150 && offX <= -100) {
                                selectedJaw = .mouth1
                            }
                            if (offX > -100 && offX <= -50) {
                                selectedJaw = .mouth2
                            }
                            if (offX > -50 && offX <= 50) {
                                selectedJaw = .mouth3
                            }
                            if (offX > 50 && offX <= 100) {
                                selectedJaw = .mouth4
                            }
                            if (offX > 100 && offX <= 150) {
                                selectedJaw = .mouth5
                            }
                        }
                        
                    })
            )
        }
        .offset(y: 45)
        
    }
}

struct CirclePicker_Previews: PreviewProvider {
    static var previews: some View {
        CirclePicker()
    }
}
