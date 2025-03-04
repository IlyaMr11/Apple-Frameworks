//
//  Framework.swift
//  Apple-Frameworks
//
//  Created by Илья Морозов on 03.03.2025.
//

import Foundation

struct Framework: Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var imageName: String
    var urlString: String
    var description: String
}
