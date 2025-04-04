//
//  TossbankDetail.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//
import SwiftUI

struct TossbankDetail: View {
    @State private var selectedTab = "통장"
    let tabs = ["통장", "내 토스뱅크", "상품찾기"]
    
    var body: some View {

            List {
                Section{
                    TossTabBar(tabs: tabs, selectedTab: $selectedTab)
                        .padding(.horizontal)
                        .listRowSeparator(.hidden)
                }
                Spacer()
                    .frame(height: 50)
                    .listRowSeparator(.hidden)
                Section {
                    AccountToss()
                        .listRowInsets(EdgeInsets()) // 여백 제거
                        .listRowSeparator(.hidden)   // 구분선 제거
                        .listRowBackground(Color.white) // 배경 지정
                }
                Spacer()
                    .listRowSeparator(.hidden)
                Section {
                    FilterBar()
                        .listRowSeparator(.hidden)
                }
                
                Section(header:
                            Text("3월 22일")
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                    .textCase(nil)
                    .padding(.leading, 16)
                ) {
                    ForEach(Transaction.march22) { tx in
                        TransactionRow(tx: tx)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
                    }
                }
                
                Section(header:
                            Text("3월 21일")
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                    .textCase(nil)
                    .padding(.leading, 16)
                ) {
                    ForEach(Transaction.march21) { tx in
                        TransactionRow(tx: tx)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
                    }
                }
            }
            .listStyle(.plain)
            .listRowSeparator(.hidden)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("통장관리") {
                        print("통장관리 tapped")
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }

#Preview {
    TossbankDetail()
}
