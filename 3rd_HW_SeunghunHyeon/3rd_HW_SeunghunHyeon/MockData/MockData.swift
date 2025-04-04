//
//  MockData.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 3/30/25.
//

import SwiftUI

struct MockData: Identifiable{
    let id = UUID()
    var title: String
    var name: String
}

extension MockData{
    static let modeling: [[MockData]] = [
        [
            MockData(title: "Hana", name: "Hana"),
            MockData(title: "toss", name: "toss"),
            MockData(title: "tosspay", name: "tosspay"),
            MockData(title: "Kbank", name: "Kbank"),
            MockData(title: "Kb", name: "Kb"),
            MockData(title: "teeth", name: "teeth"),
            MockData(title: "ibk", name: "ibk"),
            MockData(title: "global", name: "global"),
            MockData(title: "kakao", name: "kakao"),
            MockData(title: "ibk2", name: "ibk2"),
            MockData(title: "coin", name: "coin")
        ],
        [
            MockData(title: "Used", name: "Used"),
            MockData(title: "credit", name: "credit"),
            MockData(title: "Ad", name: "Ad"),
            MockData(title: "ETCpap", name: "ETCpap"),
            MockData(title: "ETCcard", name: "ETCcard"),
            MockData(title: "cal", name: "cal"),
            MockData(title: "kakaoTaxi", name: "kakaoTaxi"),
            MockData(title: "game", name: "game"),
            MockData(title: "CU", name: "CU"),
            
        ]
        
        
    ]
}
