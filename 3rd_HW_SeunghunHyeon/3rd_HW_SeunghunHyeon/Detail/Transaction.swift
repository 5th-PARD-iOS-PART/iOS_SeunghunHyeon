//
//  Transection.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import Foundation

struct Transaction: Identifiable {
    let id = UUID()
    let logo: String
    let title: String
    let time: String
    let amount: Int
    let balance: Int
    let isIncome: Bool
}

extension Transaction {
    static let march22: [Transaction] = [
        Transaction(logo: "kakaoTaxi", title: "카카오 택시_0", time: "11:13", amount: -6200, balance: 38841, isIncome: false),
        Transaction(logo: "kakaoTaxi", title: "카카오 택시 선승인", time: "11:00", amount: 6900, balance: 45041, isIncome: true),
        Transaction(logo: "kakaoTaxi", title: "카카오 택시 선승인", time: "11:00", amount: -6900, balance: 38141, isIncome: false)
    ]

    static let march21: [Transaction] = [
        Transaction(logo: "game", title: "플렉스PC방", time: "22:44", amount: -5500, balance: 45041, isIncome: false),
        Transaction(logo: "game", title: "플렉스PC방", time: "21:35", amount: -5000, balance: 50541, isIncome: false),
        Transaction(logo: "CU", title: "씨유한동대오석관점", time: "16:17", amount: -2000, balance: 55541, isIncome: false),
        Transaction(logo: "CU", title: "씨유한동대오석관점", time: "15:59", amount: -4400, balance: 57541, isIncome: false),
        Transaction(logo: "kakaoTaxi", title: "카카오 택시_0", time: "10:00", amount: -7000, balance: 61941, isIncome: false),
        Transaction(logo: "kakaoTaxi", title: "카카오 택시_0", time: "09:47", amount: +7300, balance: 68941, isIncome: false),
        Transaction(logo: "kakaoTaxi", title: "카카오 택시_0", time: "09:47", amount: -7300, balance: 61641, isIncome: false),
        Transaction(logo: "kakaoTaxi", title: "카카오 택시_0", time: "09:46", amount: +7300, balance: 68941, isIncome: false),
        Transaction(logo: "kakaoTaxi", title: "카카오 택시_0", time: "11:13", amount: -7300, balance: 76241, isIncome: false),

    ]
}
