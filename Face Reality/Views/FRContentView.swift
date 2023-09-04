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
                    
                    
                    
                    HStack(alignment: .top) {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "house.fill")
                                .foregroundColor(.iconColor)
                                .font(.system(size: 26))
                                .frame(width: 28, height: 28)
                                .padding(.horizontal, 11)
                                .padding(.vertical, 6)
                        }
                                         
                        .background(RoundedRectangle(cornerRadius: 12).fill(.regularMaterial))
                        .shadow(radius: 4, y: 4)
                        
                        Spacer()
                        
                    
                        VStack {
                            Rectangle()
                                .frame(height: 25)
                                .foregroundColor(.clear)
                            
                            
                            switch arViewModel.emotions {
                            case .Joy:
                                Text(smileChecker())
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .foregroundColor(arViewModel.isSmiling ? .green : .red)
                                    .background(RoundedRectangle(cornerRadius: 8).fill(.regularMaterial).opacity(0.5))
                                    .shadow(radius: 4, y: 4)

                                
                            case .Sadness:
                                Text(sadnessChecker())
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .foregroundColor(arViewModel.isFrowning ? .green : .red)
                                    .background(RoundedRectangle(cornerRadius: 8).fill(.regularMaterial).opacity(0.5))
                                    .shadow(radius: 4, y: 4)

                            case .Rage:
                                Text(scowlChecker())
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .foregroundColor(arViewModel.isScowling ? .green : .red)
                                    .background(RoundedRectangle(cornerRadius: 8).fill(.regularMaterial).opacity(0.5))
                                    .shadow(radius: 4, y: 4)

                                
                            case .Surprise:
                                Text(surprisedChecker())
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .foregroundColor(arViewModel.isScared ? .green : .red)
                                    .background(RoundedRectangle(cornerRadius: 8).fill(.regularMaterial).opacity(0.5))
                                    .shadow(radius: 4, y: 4)

                            case .Disgust:
                                Text(disgustChecker())
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 5)
                                    .foregroundColor(arViewModel.isDisgusted ? .green : .red)
                                    .background(RoundedRectangle(cornerRadius: 8).fill(.regularMaterial).opacity(0.5))
                                    .shadow(radius: 4, y: 4)

                            }
                        }
                        
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                showInfo = true
                            }
                        }) {
                            Image(systemName: "book.closed.fill")
                                .foregroundColor(.iconColor)
                                .font(.system(size: 26))
                                .frame(width: 28, height: 28)
                                .padding(.horizontal, 11)
                                .padding(.vertical, 6)

                            
                        }
         
                        
                        .background(RoundedRectangle(cornerRadius: 12).fill(.regularMaterial))
                        .shadow(radius: 4, y: 4)

                        
                        
                    }
                    .padding()
                    
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
                    .shadow(radius: 4, y: 4)

                    
                    .background(RoundedRectangle(cornerRadius: 20).fill(.regularMaterial).opacity(0.5).shadow(radius: 4, y: 4))
                    
                    
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
