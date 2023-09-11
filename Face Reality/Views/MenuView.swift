//
//  ContentView.swift
//  FaceReality
//
//  Created by Bianca Nathally Bezerra de Lima on 06/09/23.
//

import SwiftUI
import UIKit
import AVFoundation

struct HostingWindowFinder: UIViewRepresentable {
    var callback: (UIWindow?) -> ()
    
    func makeUIView (context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async { [weak view] in
            self.callback (view? .window)
        }
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}

struct ContentView: View {
    @State private var selectedMode: String = ""
    @State private var didTapAR: Bool = false
    @State private var didTap3D: Bool = false
    @ObservedObject var arViewModel : ARViewModel = ARViewModel()
    @EnvironmentObject private var coordinator: Coordinator
    @Environment(\.dismiss) private var dismiss

    
    var body: some View {
//        NavigationStack {
            ZStack {
                ARViewContainer(arViewModel: arViewModel).edgesIgnoringSafeArea(.all).blur(radius: 40)
                
            
                
                VStack (spacing: 239) {
                    Text("Face Reality")
                        .font(Font.custom("RedHatDisplayItalic-SemiBold", size: 36))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    VStack(spacing: 56) {
                        Text("Selecione um modo:")
                            .font(Font.custom("SF Pro Text", size: 20))
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        HStack(alignment: .center, spacing: 48) {
                            
                            Button("AR") {
                                selectedMode = "AR"
                                self.didTapAR = true
                                self.didTap3D = false
                            }
                            .buttonStyle(ModeButton())
                            .foregroundStyle(didTapAR ? Color.white : Color.black)
                            .background(didTapAR ? Color(red: 0, green: 0.2, blue: 0.39) : Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                            Button("3D") {
                                selectedMode = "3D"
                                self.didTap3D = true
                                self.didTapAR = false
                            }
                            .buttonStyle(ModeButton())
                            .foregroundStyle(didTap3D ? Color.white : Color.black)
                            .background(didTap3D ? Color(red: 0, green: 0.2, blue: 0.39) : Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        
                        VStack(spacing: 113) {
                            if selectedMode == "" {
                                Text("Selecione um modo")
                                    .padding()
                                    .font(Font.custom("SF Pro Text", size: 14))
                                    .fontWeight(.medium)
                                    .foregroundStyle(.white)
                                
                                Text("")
                                    .padding(.horizontal, 33)
                                    .padding(.vertical, 13)
                                    .font(Font.custom("SF Pro Text", size: 20))
                                    .fontWeight(.medium)
                            }
                            
                            if selectedMode == "AR" {
                                Text("Teste os músculos com projeção AR")
                                    .padding()
                                    .font(Font.custom("SF Pro Text", size: 14))
                                    .fontWeight(.medium)
                                    .foregroundStyle(.white)
                                
//                                NavigationLink("Começar", destination: PlayAR(mode: selectedMode).navigationBarBackButtonHidden(true))
//                                    .buttonStyle(ButtonStyleSelect())
//                                    .disabled(selectedMode.isEmpty)
                                
                                Button("Começar", action:{
                                    coordinator.goToARview()
//                                    dismiss()

                                })
                                    .buttonStyle(ButtonStyleSelect())
                                    .disabled(selectedMode.isEmpty)
                            }
                            
                            if selectedMode == "3D" {
                                Text("Teste os músculos com projeção 3D")
                                    .padding()
                                    .font(Font.custom("SF Pro Text", size: 14))
                                    .fontWeight(.medium)
                                    .foregroundStyle(.white)
                                
//                                NavigationLink("Começar", destination: Play3D(mode: selectedMode).navigationBarBackButtonHidden(true))
//                                    .disabled(selectedMode.isEmpty)
//                                    .buttonStyle(ButtonStyleSelect())
                                Button("Começar", action: coordinator.goToMusclesView)
                                    .buttonStyle(ButtonStyleSelect())
                                    .disabled(selectedMode.isEmpty)
                            }
                        }
                        
                    }
                }
            }
         //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonStyleSelect: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 63)
            .padding(.vertical, 13)
            .font(Font.custom("SF Pro Text", size: 12))
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct ModeButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 33)
            .padding(.vertical, 13)
            .font(Font.custom("SF Pro Text", size: 20))
            .fontWeight(.medium)
    }
}

struct PlayAR: View {
    var mode: String
    
    var body: some View {
        FRContentView()
    }
}

struct Play3D: View {
    var mode: String
    
    var body: some View {
        VStack {
            Text("Volte à página inicial")
            .onAppear{
//                Unity.shared.show()
            }
        }
        .background (
            HostingWindowFinder { window in
//                Unity.shared.setHostMainWindow(window)
            }
        )
    }
}
