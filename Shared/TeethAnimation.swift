//
//  TeethAnimation.swift
//  Dentist
//
//  Created by Борис Ларионов on 15.01.2022.
//

import SwiftUI

struct TeethAnimation: View {
    @State private var toothIsAppear = false
    @State private var circle1IsAppear = false
    @State private var circle2IsAppear = false
    
    @State private var rectangleAnimation = false
    @State private var rectangleRotation = false
    
    @State private var starAnimation = false
    @State private var starRotation = false
    
    @State private var triangleAnimation = false
    @State private var triangleRotation = false
    
    @State private var circle1Animation = false
    @State private var circle1Rotation = false
    
    @State private var opacityAnimation = false
    
    var body: some View {
        ZStack {
            
            toothWithCirclesAnimation
            
            particlesAnimation
        }
    }
    
    var toothWithCirclesAnimation: some View {
        ZStack {
            Circle()
                .fill(Color(#colorLiteral(red: 0.989805758, green: 0.8946056366, blue: 0.8924568295, alpha: 1)).opacity(0.5))
                .frame(width: !circle2IsAppear ? 0 : 320)
            
            Circle()
                .fill(Color(#colorLiteral(red: 0.989805758, green: 0.8946056366, blue: 0.8924568295, alpha: 1)))
                .frame(width: !circle1IsAppear ? 0 : 260)
            
            Image("Tooth")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: !toothIsAppear ? 0 : 190)

        }
        .onAppear {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                toothIsAppear = true
            }
            withAnimation(.spring(response: 0.4, dampingFraction: 0.6).delay(0.2)) {
                circle1IsAppear = true
            }
            withAnimation(.spring(response: 0.4, dampingFraction: 0.5).delay(0.3)) {
                circle2IsAppear = true
            }
        }
    }
    
    var particlesAnimation: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .rotationEffect(Angle(degrees: rectangleRotation ? 360 : 0 ))
                .frame(width: 30, height: 30)
                .foregroundColor(Color(#colorLiteral(red: 0.9939340949, green: 0.6752508283, blue: 0.6456760764, alpha: 1)))
                .offset(x: -120, y: -150)
                .offset(x: rectangleAnimation ? 10 : 0, y: rectangleAnimation ? 15 : 0)
            
            Image(systemName: "star.fill")
                .font(.system(size: 40))
                .rotationEffect(Angle(degrees: rectangleRotation ? 360 : 0 ))
                .frame(width: 30, height: 30)
                .foregroundColor(Color(#colorLiteral(red: 0.9939340949, green: 0.6752508283, blue: 0.6456760764, alpha: 1)))
                .offset(x: -85, y: 90)
                .offset(x: starAnimation ? 0 : 10, y: starAnimation ? 0 : 15)
            
            VStack (spacing: 5){
                Circle()
                    .fill(Color(#colorLiteral(red: 0.9939340949, green: 0.6752508283, blue: 0.6456760764, alpha: 1)))
                    .frame(width: 30, height: 30)
                
                Circle()
                    .fill(Color(#colorLiteral(red: 0.9939340949, green: 0.6752508283, blue: 0.6456760764, alpha: 1)))
                    .frame(width: 17, height: 17)
            }
            .rotationEffect(Angle(degrees: -20))
            .rotationEffect(Angle(degrees: circle1Rotation ? 360 : 0 ))
            .foregroundColor(Color(#colorLiteral(red: 0.9939340949, green: 0.6752508283, blue: 0.6456760764, alpha: 1)))
            .offset(x: 100, y: -90)
            .offset(x: circle1Animation ? 0 : 10, y: circle1Animation ? 0 : 15)
            
            Image(systemName: "triangle.fill")
                .font(.system(size: 30))
                .rotationEffect(Angle(degrees: 45))
                .rotationEffect(Angle(degrees: rectangleRotation ? 360 : 0 ))
                .frame(width: 30, height: 30)
                .foregroundColor(Color(#colorLiteral(red: 0.9939340949, green: 0.6752508283, blue: 0.6456760764, alpha: 1)))
                .offset(x: 140, y: 90)
                .offset(x: starAnimation ? 0 : 10, y: starAnimation ? 0 : 15)
            
                
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 4).repeatForever()) {
                rectangleAnimation = true
            }
            withAnimation(.linear(duration: 20).repeatForever(autoreverses: false)) {
                rectangleRotation = true
            }
            
            withAnimation(.easeInOut(duration: 6).repeatForever()) {
                starAnimation = true
            }
            withAnimation(.linear(duration: 30).repeatForever(autoreverses: true)) {
                starRotation = true
            }
            
            withAnimation(.easeInOut(duration: 3).repeatForever()) {
                circle1Animation = true
            }
            withAnimation(.linear(duration: 15).repeatForever(autoreverses: true)) {
                circle1Rotation = true
            }
            withAnimation(.linear(duration: 2.5).delay(0.8)) {
                opacityAnimation = true
            }
        }
        .opacity(!opacityAnimation ? 0 : 1)
    }
}

struct TeethAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TeethAnimation()
    }
}
