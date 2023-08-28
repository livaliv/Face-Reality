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
    @State private var showInfo = false    
    
    var body: some View {
        ZStack {
            ARViewContainer(arViewModel: arViewModel).edgesIgnoringSafeArea(.all)
            
            
            HStack {
                VStack(alignment: .center, spacing: 5) {
                    
                    
                    
                    HStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "house.fill")
                                .foregroundColor(.white.opacity(0.7))
                                .font(.system(size: 30))
                        }
                        .padding(.horizontal, 11)
                        .padding(.vertical, 6)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial))

                        
                        Spacer()
                        
                        
                        Button(action: {
                            showInfo = true
                        }) {
                            Image(systemName: "book.closed.fill")
                                .foregroundColor(.white.opacity(0.7))
                                .font(.system(size: 25))
                        }
                        .padding(.horizontal, 14)
                        .padding(.vertical, 5)

                        .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial))

                        
                    }
                    .padding()
                    
                    switch arViewModel.emotions {
                    case .Joy:
                        Text(smileChecker())
                            .padding(.all)
                            .foregroundColor(arViewModel.isSmiling ? .green : .red)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial).opacity(0.5))
                        
                    case .Sadness:
                           Text(sadnessChecker())
                            .padding(.all)
                            .foregroundColor(arViewModel.isFrowning ? .green : .red)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial).opacity(0.5))
                    case .Rage:
                        Text(scowlChecker())
                            .padding(.all)
                            .foregroundColor(arViewModel.isScowling ? .green : .red)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial).opacity(0.5))

                    case .Surprise:
                        Text(surprisedChecker())
                            .padding(.all)
                            .foregroundColor(arViewModel.isScared ? .green : .red)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial).opacity(0.5))
                    case .Disgust:
                        Text(disgustChecker())
                            .padding(.all)
                            .foregroundColor(arViewModel.isDisgusted ? .green : .red)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial).opacity(0.5))
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 15) {
                        Button(action: {
                            arViewModel.emotions = .Joy
             
                        }) {
                            Image("Smiley face")
                                .foregroundColor(.white)
                                .font(.system(size: 60))
                        }
                        Button(action: {
                            arViewModel.emotions = .Sadness
                        }) {
                            Image("Sad face")
                                .foregroundColor(.white)
                                .font(.system(size: 60))
                        }
                        Button(action: {
                            arViewModel.emotions = .Rage
                        }) {
                            Image("Angry face")
                                .foregroundColor(.white)
                                .font(.system(size: 60))
                        }
                        Button(action: {
                            arViewModel.emotions = .Surprise
                            
                        }) {
                            Image("Surprised face")
                                .foregroundColor(.white)
                                .font(.system(size: 60))
                        }
                        Button(action: {
                            arViewModel.emotions = .Disgust
                        }) {
                            Image("Disgust face")
                                .foregroundColor(.white)
                                .font(.system(size: 60))
                        }
                    }
                    .padding(.all)
                    
                    .background(RoundedRectangle(cornerRadius: 20).fill(.regularMaterial).opacity(0.5))
                    
                    
//                    VStack {
//                        if showWelcomeScreen == false {
//
//                            Button("Go to \(phase == "smiling emotion 😊" ? "scowl emotion 😡" : "smiling emotion 😊")") {
//                                if (phase == "smiling emotion 😊") {
//                                    phase = "scowl emotion 😡"
//                                } else {
//                                    phase = "smiling emotion 😊"
//                                }
//
//                            }
//
//                        }
//
//                    }
                }
            }
            
            // Show the welcome screen only if the `showWelcomeScreen` variable is `true`
            if showInfo {
//
                switch arViewModel.emotions {
                case .Joy:
                    InfoPopup(dismissAction: {
                        showInfo = false
                    }, arrayMuscles: arViewModel.smileMuscles.muscles)
//
//
                    
                case .Sadness:
                    InfoPopup(dismissAction: {
                        showInfo = false
                    }, arrayMuscles: arViewModel.sadnessMuscles.muscles)

//
                case .Rage:
                    InfoPopup(dismissAction: {
                        showInfo = false
    
                    }, arrayMuscles: arViewModel.angerMuscles.muscles)

//
                case .Surprise:
                    InfoPopup(dismissAction: {
                        showInfo = false
                    }, arrayMuscles: arViewModel.surpriseMuscles.muscles)

//
                case .Disgust:
                    InfoPopup(dismissAction: {
                        showInfo = false
                    }, arrayMuscles: arViewModel.disgustMuscles.muscles)

//
                }
////                
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
    
    func sadnessChecker() -> String {
        if arViewModel.isFrowning {
            return "Sadness 😭"
        }
        else {
            return "Neutral 😐"
        }
    }
    
    func surprisedChecker() -> String {
        if arViewModel.isScared {
            return "Surprised! 😮"
        }
        return "Neutral 😐"

    }
    
    func disgustChecker() -> String {
        if arViewModel.isDisgusted {
            return "Disgusted!"
        }
        return "Neutral 😐"
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
    
}
