//
//  ContentView.swift
//  EmojiFun
//
//  Created by Kevin Waltz on 03.12.24.
//

import SwiftUI

struct SampleView: View {
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("🐟")
                .font(.system(size: 150))
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Dreh mich!")
            }
        }
    }
    
}

#Preview {
    SampleView()
}
