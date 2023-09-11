//
//  Onboarding.swift
//  Face Reality
//
//  Created by livia on 25/08/23.
//

import SwiftUI
import RealityKit

struct OnboardingView: View {
    @EnvironmentObject private var coordinator: Coordinator
    @Environment(\.dismiss) private var dismiss

    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Image("backgroundImage")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                

                VStack(spacing: 48) {
                            VStack(spacing:24 ) {
                                Text("Boas vindas!")
                                    .font(.title)
                                    .foregroundColor(Color.navyBlue)
                                    .padding(.top, 40)
                                
                                Text("Face Reality é um app que te ajuda a entender o funcionamento muscular de acordo com as expressões faciais.")
                                    .font(.body)
                                    .foregroundColor(Color.navyBlue)
                                    .padding()
                                    .font(.system(size: 500))
                                    .minimumScaleFactor(0.01)
  
                            }
                            
//                            NavigationLink(
//                                destination: FRContentView().navigationBarBackButtonHidden(true)
//,
//                                label: {
//                                    Text("Começar")
//                                        .padding(.horizontal, 50)
//                                        .padding(.vertical, 12)
//                                        .foregroundColor(Color.projectWhite)
//                                        .background(Color.iconColor)
//                                        .cornerRadius(20)
//
//
//                                }
//
//                            )
//                            .padding(.horizontal, 50)
//                            .padding(.bottom, 40)
                    
                    Button(action: {
//                        dismiss()
                        coordinator.goToMenu()
                        
                    }) {
                        Image(systemName: "house.fill")
                            .foregroundColor(.iconColor)
                            .font(.system(size: 26))
                            .frame(width: 28, height: 28)
                            .padding(.horizontal, 11)
                            .padding(.vertical, 6)
                    }
                            
                        }
                .background(RoundedRectangle(cornerRadius: 8).fill(.regularMaterial).opacity(0.9).shadow(radius: 8, y: 8))
                            .padding(.horizontal, 60)
                            .padding(.vertical, 250)

                        
                        
                  
            }
        }
        
    }
    
}


#if DEBUG
struct OnboardingView_Previews : PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
#endif
