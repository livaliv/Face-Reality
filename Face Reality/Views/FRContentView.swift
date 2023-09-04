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
    @State private var strokeArray = [true, false, false, false, false]
    
    
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
                        VStack {
                            Button(action: {
                                arViewModel.emotions = .Joy
                                if strokeArray[0] == false {
                                    strokeArray = [true, false, false, false, false]

                                } else {
                                    strokeArray[0] = false
                                }
                                
                            }) {
                                Image(strokeArray[0] ? "Smiley face" : "smile.stroke")
                                    .foregroundColor(.white)
                                    .font(.system(size: 60))
    //                                .background(strokeArray[0] ? Color.black : Color.red)

                                    
                            }
                            if strokeArray[0] {
                                Text("Sorriso")
                                    .foregroundColor(.white)
                            }
//                            Text(strokeArray[0] ? "Sorriso" : "")
                        }
                        VStack {
                            Button(action: {
                                arViewModel.emotions = .Sadness
                                if strokeArray[1] == false {
                                    strokeArray = [false, true, false, false, false]

                                } else {
                                    strokeArray[1] = false
                                }

                            }) {
                                Image(strokeArray[1] ? "Sad face" : "sad.stroke")
                                    .foregroundColor(.white)
                                    .font(.system(size: 60))
    //                                .background(strokeArray[1] ? Color.black : Color.red)
                                

                            }
                            if strokeArray[1] {
                                Text("Tristeza")
                                    .foregroundColor(.white)

                            }
                        }
                       
                        VStack {
                            Button(action: {
                                arViewModel.emotions = .Surprise
    //                            strokeArray = [false, false, false, true, false]
                                if strokeArray[3] == false {
                                    strokeArray = [false, false, false, true, false]

                                } else {
                                    strokeArray[3] = false
                                }

                                
                            }) {
                                Image(strokeArray[3] ? "Surprised face" : "surprise.stroke")
                                    .foregroundColor(.white)
                                    .font(.system(size: 60))
//                                    .background(strokeArray[3] ? Color.black : Color.red)

                            }
                            if strokeArray[3] {
                                Text("Surpresa")
                                    .foregroundColor(.white)

                            }

                        }

                        VStack {
                            Button(action: {
                                arViewModel.emotions = .Rage
                                if strokeArray[2] == false {
                                    strokeArray = [false, false, true, false, false]

                                } else {
                                    strokeArray[2] = false
                                }

                            }) {
                                Image(strokeArray[2] ? "Angry face" : "anger.stroke")
                                    .foregroundColor(.white)
                                    .font(.system(size: 60))
//                                    .background(strokeArray[2] ? Color.black : Color.red)

                            }
                            if strokeArray[2] {
                                Text("Raiva")
                                    .foregroundColor(.white)

                            }

                        }
                        VStack {
                            Button(action: {
                                arViewModel.emotions = .Disgust
                                if strokeArray[4] == false {
                                    strokeArray = [false, false, false, false, true]

                                } else {
                                    strokeArray[4] = false
                                }

                            }) {
                                Image(strokeArray[4] ? "Disgust face" : "disgust.stroke")
                                    .foregroundColor(.white)
                                    .font(.system(size: 60))
//                                    .background(strokeArray[4] ? Color.black : Color.red)
                            }
                            
                            if strokeArray[4] {
                                Text("Nojo")
                                    .foregroundColor(.white)

                            }

                        }
                    }
                    .padding(.all)
                    .shadow(radius: 4, y: 4)

                    
                    .background(RoundedRectangle(cornerRadius: 20).fill(.regularMaterial).opacity(0.5).shadow(radius: 4, y: 4))
                    
                    
                   
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
