//
//  InfoOverlay.swift
//  Face Reality
//
//  Created by mvitoriapereirac on 16/08/23.
//

import Foundation
import SwiftUI

extension FRContentView {
    
    var infoOverlay: some View {
        HStack(alignment: .top, spacing: 0) {
            HStack(alignment: .top) {
                VStack {
                    (
                        Text("click")
                        
//                            .font(Font(getFont(.louis)))
                            .foregroundColor(.black)

//                            .foregroundColor(Color("mypink"))
                        +
                        Text(" on the tiles to rotate them and match the mosaic pattern. \n\n notice how many elements and/or figures you already associated with Brazil!")
//                            .font(Font(getFont(.louis)))
                            .foregroundColor(.black)

                    )
                    .frame(width: 282)
                }
            }
            .frame(width: 363, height: 530)
//            .frame(width: 180, height: 360)
            

//            .background(Color.white.opacity(0.5))
            .background(RoundedRectangle(cornerRadius: 30).fill(.regularMaterial))
            .cornerRadius(8)

            VStack {
                ZStack {
                    Rectangle()
                        .frame(width: 144, height: 144)
//                        .frame(width: 70, height: 70)
                        .foregroundColor(Color.white)
                        .cornerRadius(4)
                    VStack(spacing:2) {
                        Image("bookmark.fill")
                            .foregroundColor(Color.black)

                            .rotationEffect(Angle(degrees: 90))
                            .frame(width: 66)


//                        Text(self.helpIsActive ? "hide\nhelp" : "show\nhelp")
//                            .font(Font(getFont(.hecho)))
//                            .foregroundColor(Color.black)
//                        Image(self.helpIsActive ? "arrow-back" : "arrow-forward")
//                            .foregroundColor(Color.black)
//                            .frame(width: 66)
                    }
                }
                
            }
        }
    }
}
