//
//  PopupView.swift
//  Face Reality
//
//  Created by mvitoriapereirac on 21/08/23.
//

import SwiftUI

struct PopupView: View {
    var dismissAction: () -> Void
    let titleText: String
    let bodyText: String
    let isOnboarding: Bool
    let buttonLabel: String
    
    
    var body: some View {
        ZStack {
            // Dim the AR view behind the welcome screen
//            Color.black.opacity(0.5).edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 2) {
//                Text("Welcome to Face Reality!")
                Text(titleText)
                    .font(.title2)
                    .fontWeight(.bold)
//                    .padding(50)
                    .padding()
                
//                Text("This experiment will show how our facial expression muscles are directly related to the human ability to show emotion.")
                
                ScrollView {
                    VStack {
                        Text(bodyText)
                            .font(.body)
//                            .padding(.horizontal, 50)
                            .padding()

                            .fixedSize(horizontal: false, vertical: true)

                        
                    }
                }
                
                Image("MuscleIlustration")
                    .padding()

               
                if isOnboarding {
                    Button(buttonLabel) {
                        dismissAction()
                    }
                    .font(.title2)
                    .padding()

    //                .padding(.horizontal, 40)
    //                .padding(.vertical, 20)
                    .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial))
    //                .padding(.bottom, 40)
                }
                
            }
            .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial).shadow(radius: 4, y: 4))
            .padding()

        }
    }
}
