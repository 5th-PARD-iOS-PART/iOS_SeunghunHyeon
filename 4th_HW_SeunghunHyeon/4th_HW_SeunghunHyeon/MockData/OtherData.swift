//
//  OtherData.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/10/25.
//

import SwiftUI

struct OtherData: Identifiable{
    let id = UUID()
    var title: String
    var name: String
    
}

extension OtherData{
    static let modeling: [[OtherData]] = [
        [
            OtherData(title: "하나은행", name: "Hana"),
            OtherData(title: "삼성증권", name: "blue"),
        ],
        [
            OtherData(title: "KB국민96314175848", name: "김정희"),
            OtherData(title: "카카오뱅크3333-20-8455642", name: "내입출금통장"),
            OtherData(title: "IBK기업286-104115-01-019", name: "김래언"),
            OtherData(title: "KB국민96314175848", name: "김정희"),
            OtherData(title: "카카오뱅크3333-20-8455642", name: "내입출금통장"),
            OtherData(title: "IBK기업286-104115-01-019", name: "김래언"),
        ]
        
        
    ]
}
