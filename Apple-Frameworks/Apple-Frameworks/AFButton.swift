//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Илья Морозов on 03.03.2025.
//

import SwiftUI

struct AFButton: View {
    let title: String
    
    var body: some View {
        Button() {
            
        } label: {
            Text(title)
                .font(.title)
                .frame(width: 280, height: 50)
                .foregroundColor(.white)
                .background(Color.red)
                .clipShape(.rect(cornerRadius: 15))
        }
    }
}

#Preview {
    AFButton(title: "learn More")
}
