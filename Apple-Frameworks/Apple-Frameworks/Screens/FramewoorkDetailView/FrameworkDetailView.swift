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
    @State private var isShowSafari: Bool = false
    
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
            Button() {
                isShowSafari = true
            } label : {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.red)
            .padding()
        }
        .sheet(isPresented: $isShowSafari) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://www.google.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowDetail: .constant(false))
}
