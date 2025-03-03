//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Илья Морозов on 03.03.2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.primary)
                        .imageScale(.large)
                        .frame(width: 45, height: 45)
                }
                .padding()
            }
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            AFButton(title: "Learn More")
                .padding()
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
