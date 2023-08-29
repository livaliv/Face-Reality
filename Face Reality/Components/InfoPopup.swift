//
//  File.swift
//  Face Reality
//
//  Created by mvitoriapereirac on 23/08/23.
//

import Foundation
import SwiftUI

struct InfoPopup: View {
    var dismissAction: () -> Void
    let arrayMuscles: [Muscle]
    
    var body: some View {
        ZStack{
//            Color.black.opacity(0.5).edgesIgnoringSafeArea(.all)
            
            VStack {
                Rectangle()
                    .frame(height: 50)
                    .foregroundColor(.clear)
//                    .overlay(
//                        Text(arrayMuscles[0].expression)
//                            .padding(.all)
//                            .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial).opacity(0.5))
//                    )
                
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.1)) {
                            dismissAction()

                        }
                    }) {
                        Image(systemName: "x.circle")
                            .foregroundColor(.iconColor.opacity(0.9))
                            .font(.system(size: 30))
                            .padding()
                    }
                }
                ScrollView(showsIndicators: false){
                    ForEach(arrayMuscles, id: \.self) { muscle in
                        PopupView(dismissAction: {
                        }, titleText: muscle.muscleName, bodyText: muscle.muscleDescription, isOnboarding: false, buttonLabel: "Fechar")
                        
                    }
                    

                    
                }

            }

        }
//        .mask(LinearGradient(gradient: Gradient(colors: [.clear, .clear, .black, .black, .black, .black, .clear, .clear]), startPoint: .top, endPoint: .bottom))
        .mask(LinearGradient(gradient: Gradient(colors: [.black, .black, .black, .black, .clear, .clear]), startPoint: .top, endPoint: .bottom))



    }
}
