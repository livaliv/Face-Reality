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
    @State private var showWelcomeScreen = true
    @State private var showSmilingMuscles = false
    @State private var showScowlingMuscles = false
    @State private var phase = "smiling emotion 😊"
    @State private var showInfo = false
    @State private var emotionText = "Neutral 😐"
    
    
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
                        
                        
                        //                        Button(action: {
                        //                            showInfo = true
                        //                        }) {
                        //                            Image(systemName: "book.closed.fill")
                        //                                .foregroundColor(.iconColor)
                        //                                .font(.system(size: 25))
                        //                        }
                        //                        .padding(.horizontal, 14)
                        //                        .padding(.vertical, 5)
                        //
                        //                        .background(RoundedRectangle(cornerRadius: 15).fill(.regularMaterial))
                        
                        
                        //                    }
                        //                    .padding()
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
            
            if showWelcomeScreen {
                PopupView(dismissAction: {
                    showWelcomeScreen = false
                    showSmilingMuscles = true
                }, titleText: "Welcome to Face Reality!", bodyText: "This experiment will show how our facial expression muscles are directly related to the human ability to show emotion.", isOnboarding: true, buttonLabel: "Começar")
            }
            if showInfo {
                
                ZStack{
                    Color.black.opacity(0.4).edgesIgnoringSafeArea(.all)
                    //
                    switch arViewModel.emotions {
                    case .Joy:
                        
                        
                        InfoPopup(dismissAction: {
                            showWelcomeScreen = false
                            showSmilingMuscles = false
                            showInfo = false
                        }, arrayMuscles: arViewModel.smileMuscles.muscles)
                        
                        
                        //
                        //
                        
                    case .Sadness:
                        InfoPopup(dismissAction: {
                            showWelcomeScreen = false
                            showSmilingMuscles = false
                            showInfo = false
                        }, arrayMuscles: arViewModel.sadnessMuscles.muscles)
                        
                        //
                    case .Rage:
                        InfoPopup(dismissAction: {
                            showWelcomeScreen = false
                            showSmilingMuscles = false
                            showInfo = false
                            
                        }, arrayMuscles: arViewModel.angerMuscles.muscles)
                        
                        //
                    case .Surprise:
                        InfoPopup(dismissAction: {
                            showWelcomeScreen = false
                            showSmilingMuscles = false
                            showInfo = false
                        }, arrayMuscles: arViewModel.surpriseMuscles.muscles)
                        
                        //
                    case .Disgust:
                        InfoPopup(dismissAction: {
                            showWelcomeScreen = false
                            showSmilingMuscles = false
                            showInfo = false
                        }, arrayMuscles: arViewModel.disgustMuscles.muscles)
                        
                        //
                    }
                }
                ////
            }
            
            if showSmilingMuscles == true {
                SmilingMusclesView(dismissAction: {
                    showSmilingMuscles = false
                    showScowlingMuscles = true
                })
            }
            
            if showScowlingMuscles == true {
                ScowlingMusclesView(dismissAction: {
                    showScowlingMuscles = false
                    
                })
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
    
    
    struct SmilingMusclesView: View {
        var dismissAction: () -> Void
        
        var body: some View {
            ZStack {
                VStack {
                    Text("To smile, we need at least four pairs of facial expression muscles: the zygomatic major and minor, upper lip and nose wing lifter, and upper lip lifter.")
                        .padding(25)
                    HStack {
                        Image("smile")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(10)
                        Image("smileMuscles")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(10)
                    }
                    
                    Text("Smiling a little wider also activates the orbicular muscles of the eyes, bringing even more joy to our face and achieving the famous eye-smile look")
                        .padding(25)
                    HStack {
                        Image("eyeSmile")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(10)
                        Image("eyeSmileMuscles1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(10)
                        Image("eyeSmileMuscles2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(10)
                    }
                    
                    Button("Next") {
                        dismissAction()
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 20)
                    .background(RoundedRectangle(cornerRadius: 30).fill(.regularMaterial))
                    .padding(.bottom, 40)
                    
                    
                    
                    
                }
                .background(RoundedRectangle(cornerRadius: 25).fill(.regularMaterial))
                .padding()
            }
        }
    }
    
    struct ScowlingMusclesView: View {
        var dismissAction: () -> Void
        
        var body: some View {
            ZStack {
                VStack {
                    Text("Look how many muscles we activate when we're angry!")
                        .padding(25)
                    Text("Anger is a very complex emotion and it needs the action of muscles like the procerus and corrugator of the eyebrow to draw our eyebrows together and wrinkle our nose, the upper lip-lift and nose-wing muscle to inflate our nostrils, we use the depressor of the lower lip, depressor of the corner of the mouth and mentonians to scowl at the mouth and even the platysma, in the neck, gets involved.")
                        .padding(.horizontal, 25)
                        .padding(.bottom, 25)
                    HStack {
                        Image("scowl")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(10)
                        Image("scowlMuscles")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(10)
                    }
                    Text("Gee, that tires us out too much. Better to smile, huh?")
                        .padding(25)
                    
                    Button("Next") {
                        dismissAction()
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 20)
                    .background(RoundedRectangle(cornerRadius: 30).fill(.regularMaterial))
                    .padding(.bottom, 40)
                    
                    
                    
                    
                }
                .background(RoundedRectangle(cornerRadius: 25).fill(.regularMaterial))
                .padding()
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
    
}
