//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Илья Морозов on 03.03.2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowDetail: Bool
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                
                Button {
                    isShowDetail = false
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
    FrameworkDetailView(framework: MockData.sampleFramework, isShowDetail: .constant(false))
}
