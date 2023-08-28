//
//  Onboarding.swift
//  Face Reality
//
//  Created by livia on 25/08/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("backgroundImage")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 286, height: 292)
                    .background(RoundedRectangle(cornerRadius: 8).fill(.regularMaterial))

                    .overlay(
                        VStack {
                            Text("Boas vindas!")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()

                            Text("Face Reality é um app que te ajuda a entender o funcionamento muscular de acordo com as expressões faciais.")
                                .font(.body)
                                .foregroundColor(.white)

                            NavigationLink(
                                destination: FRContentView(),
                                label: {
                                    Text("Começar")
                                        .foregroundColor(Color("azulmarinho1000"))
                                        .padding()
                                        .background(Color("quasebranco"))
                                        .cornerRadius(20)
                                }
                            )
                        }
                    )
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
