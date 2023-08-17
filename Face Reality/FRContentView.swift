//
//  ContentView.swift
//  Face Reality
//
//  Created by livia on 21/07/23.
//

import SwiftUI
import RealityKit

struct FRContentView : View {
    @ObservedObject var arViewModel : ARViewModel = ARViewModel()
    
    @State private var phase = "smiling emotion 😊"
    
    var body: some View {
        ZStack {
            ARViewContainer(arViewModel: arViewModel).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(phase  == "smiling emotion 😊" ? smileChecker() : scowlChecker())
                    .padding()
                    .foregroundColor(arViewModel.isSmiling && phase  == "smiling emotion 😊" ? .green : .red)
                    .background(RoundedRectangle(cornerRadius: 25).fill(.regularMaterial))
                Spacer()
                
                
                Button("Go to \(phase == "smiling emotion 😊" ? "scowl emotion 😡" : "smiling emotion 😊")") {
                    if (phase == "smiling emotion 😊") {
                        phase = "scowl emotion 😡"
                    } else {
                        phase = "smiling emotion 😊"
                    }
                    
                    
                    
                }
                
            }
        }
        
    }
    
    
    func scowlChecker() -> String {
        if arViewModel.isScowling {
            return "We're angry now! 😡"
        }
        else {
            return "Neutral 😐"
            
        }
    }
    
    func smileChecker() -> String {
        if arViewModel.isSmiling {
            if arViewModel.genuineSmiling {
                return "Genuine smile! 🤩"
            }
            else {
                return "Smiling 😊"
            }
        }
        else {
            return "Neutral 😐"
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

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        FRContentView()
    }
}
#endif

