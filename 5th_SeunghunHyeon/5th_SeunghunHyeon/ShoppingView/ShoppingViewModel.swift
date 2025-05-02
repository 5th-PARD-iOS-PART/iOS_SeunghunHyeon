//
//  ShoppingViewModel.swift
//  5th_SeunghunHyeon
//
//  Created by 현승훈 on 5/2/25.
//


import Foundation

class ShoppingViewModel: ObservableObject {
    @Published var selectedTab: String = "모두"
    
    // MockData 10개 이상
    @Published var allProducts: [Product] = [
        Product(name: "단백질 쉐이크", price: 35900, originalPrice: 79800, imageName: "Groups3", description: "쉐이크 설명", views: "93.3만명이구경함·무료배송", category: .식품),
        Product(name: "키위 세트", price: 2900, originalPrice: 5900, imageName: "Groups2", description: "키위 설명", views: "44.6만명이구경함무료배송", category: .식품),
        Product(name: "스파클 생수", price: 9900, originalPrice: 18000, imageName: "Groups4", description: "물 설명", views: "54.9만명이구경함·무료배송", category: .식품),
        Product(name: "레몬 토마토", price: 6990, originalPrice: 12000, imageName: "Groups5", description: "레몬 설명", views: "52.1만명이구경함·무료배송", category: .식품),
        Product(name: "뷰티 마스크팩", price: 1000, originalPrice: 3000, imageName: "Groups6", description: "마스크팩 설명", views: "32.1만명이구경함·무료배송", category: .뷰티),
        Product(name: "립스틱", price: 12900, originalPrice: 20000, imageName: "lib", description: "립 설명", views: "10.5만명이구경함·무료배송", category: .뷰티),
        Product(name: "후드티", price: 22900, originalPrice: 45000, imageName: "hoodie", description: "옷 설명", views: "13.2만명이구경함·무료배송", category: .의류),
        Product(name: "전자렌지", price: 89900, originalPrice: 139000, imageName: "microwave", description: "전자렌지 설명", views: "22.8만명이구경함·무료배송", category: .전자제품),
        Product(name: "스마트워치", price: 129000, originalPrice: 199000, imageName: "watch", description: "워치 설명", views: "40.0만명이구경함·무료배송", category: .전자제품),
        Product(name: "특가 이어폰", price: 19900, originalPrice: 39900, imageName: "Airpods", description: "특가 이어폰 설명", views: "30.0만명이구경함·무료배송", category: .특가)
    ]
    
    // 정렬 및 필터링된 리스트
    var filteredProducts: [Product] {
        let base = selectedTab == "모두" ? allProducts : allProducts.filter { $0.category.rawValue == selectedTab }
        return base.sorted { $0.price < $1.price }
    }

    var tabs: [String] {
        ["모두"] + Category.allCases.map { $0.rawValue }
    }
}
