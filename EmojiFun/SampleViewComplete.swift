//
//  SampleViewComplete.swift
//  EmojiFun
//
//  Created by Kevin Waltz on 10.12.24.
//

import SwiftUI

struct SampleViewComplete: View {
    
    @State private var isSpinning = false
    
    private func spinFish() {
        isSpinning.toggle()
    }
    
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                Image(.aqua)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                
                Text("🐟")
                    .font(.system(size: 150))
                    .rotationEffect(.degrees(isSpinning ? 180 : 0))
                    .animation(.bouncy(duration: 0.3, extraBounce: 0.4), value: isSpinning)
            }
            
            Spacer()
            
            Button {
                spinFish()
            } label: {
                Text("Dreh mich!")
                    .font(.headline)
                    .frame(width: 150, height: 44)
                    .background(.purple)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
            }
        }
    }
    
}

#Preview {
    SampleViewComplete()
}
