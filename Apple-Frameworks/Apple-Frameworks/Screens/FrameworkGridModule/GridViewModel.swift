//
//  GridViewModel.swift
//  Apple-Frameworks
//
//  Created by Илья Морозов on 03.03.2025.
//

import SwiftUI

final class GridViewModel: ObservableObject {
    
    var framework: Framework? {
        didSet { isShowDetail = true }
    }
    
    @Published var isShowDetail: Bool = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
