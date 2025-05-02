//
//  Product.swift
//  5th_SeunghunHyeon
//
//  Created by 현승훈 on 5/2/25.
//

import Foundation

enum Category: String, CaseIterable {
    case 특가, 식품, 의류, 전자제품, 뷰티
}

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: Int
    let originalPrice: Int
    let imageName: String
    let description: String
    let views: String
    let category: Category
}
