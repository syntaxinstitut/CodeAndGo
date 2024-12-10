//
//  AdvancedSampleViewInfo.swift
//  EmojiFun
//
//  Created by Kevin Waltz on 03.12.24.
//

import SwiftUI

struct AdvancedSampleViewInfo: View {
    
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
            
            HStack {
                VStack {
                    Text("Name")
                        .font(.headline)
                    
                    Text("Carlo")
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                }
                
                Divider()
                
                VStack {
                    Text("Alter")
                        .font(.headline)
                    
                    Text("34")
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                }
            }
            .frame(height: 80)
            .background(.gray.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .padding(.horizontal, 24)
            
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
    AdvancedSampleViewInfo()
}
