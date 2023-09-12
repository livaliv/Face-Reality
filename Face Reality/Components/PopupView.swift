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
    let subtitleText: String?
    let bodyText: String
    let isReference: Bool
    let buttonLabel: String
    
    
    var body: some View {
        ZStack {
            // Dim the AR view behind the welcome screen
//            Color.black.opacity(0.5).edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 2) {
//                Text("Welcome to Face Reality!")
                HStack {
                    Text(titleText)
                        .font(.title2)
                        .fontWeight(.bold)
    //                    .padding(50)
                        .padding()
                    
                    Spacer()
                    
                    if isReference {
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.1)) {
                                dismissAction()

                            }
                        }) {
                            Image(systemName: "x.circle")
                                .foregroundColor(.iconColor.opacity(0.9))
                                .font(.system(size: 24))
                                .padding()
                        }
    //                    .font(.title2)
                        .padding()

        //                .padding(.horizontal, 40)
        //                .padding(.vertical, 20)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial))
        //                .padding(.bottom, 40)
                    }
                }
                
                
                if isReference {
                    
                    Text(subtitleText ?? "")
                        .font(.body)
                        .padding()
                        .fixedSize(horizontal: false, vertical: true)
                    
                    
                }
                ScrollView {
                    VStack {
                        Text(bodyText)
                            .font(.body)
//                            .padding(.horizontal, 50)
                            .padding()

                            .fixedSize(horizontal: false, vertical: true)

                        
                    }
                }
                .padding(.bottom)
                
               
                
                if isReference == false  {
                    Image("MuscleIlustration")
                        .padding()

                }
               
               
                
                
            }
            .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial).shadow(radius: 4, y: 4))
            .padding()

        }
    }
}
