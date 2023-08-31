//
//  Onboarding.swift
//  Face Reality
//
//  Created by livia on 25/08/23.
//

import SwiftUI
import RealityKit

struct OnboardingView: View {
    @ObservedObject var arViewModel : ARViewModel = ARViewModel()
    @State var goToMain: Bool = false
    var body: some View {
        
        NavigationView {
            //NavigationLink(isActive: <#T##Binding<Bool>#>, destination: <#T##() -> View#>, label: T##() -> View)
            NavigationLink(destination: FRContentView(), isActive: $goToMain, label: {EmptyView()})
            ZStack {
                ARViewContainer(arViewModel: arViewModel).edgesIgnoringSafeArea(.all).blur(radius: 60)

                VStack {
                    Text("Boas vindas!")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()

                    Text("Face Reality é um app que te ajuda a entender o funcionamento muscular de acordo com as expressões faciais.")
                        .font(.body)
                        .foregroundColor(Color("quasebranco1000"))
                                   
                    NavigationLink(
                        destination: FRContentView(),
                        label: {
                            VStack{
                                Text("Começar")
                                    .foregroundColor(Color("azulmarinho1000"))
                                    .padding()
                                    .background(Color("quasebranco1000"))
                                    .cornerRadius(20)
                            }
                            .frame(maxWidth: 200, maxHeight: 200)
                        }
                    )
                }
            }
        }

    }
    
    struct ARViewContainer: UIViewRepresentable {
        var arViewModel: ARViewModel
        
        func makeUIView(context: Context) -> ARView {
            arViewModel.startSessionDelegate()
            return arViewModel.arView
        }
        
        func updateUIView(_ uiView: ARView, context: Context) {}
        
    }
    
}


#if DEBUG
struct OnboardingView_Previews : PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
#endif
