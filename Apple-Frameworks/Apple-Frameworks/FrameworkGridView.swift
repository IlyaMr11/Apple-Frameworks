//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Илья Морозов on 03.03.2025.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    @StateObject var viewModel = GridViewModel()
    

    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.framework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowDetail) {
                FrameworkDetailView(framework: viewModel.framework ?? MockData.sampleFramework, isShowDetail: $viewModel.isShowDetail)
            }
        }
        
            
        
    }
}

#Preview {
    FrameworkGridView()
}
