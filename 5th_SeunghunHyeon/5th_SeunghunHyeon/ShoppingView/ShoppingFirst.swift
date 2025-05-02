//
//  ShoppingFirst.swift
//  5th_SeunghunHyeon
//
//  Created by 현승훈 on 5/1/25.
//
import SwiftUI

struct ShoppingFirst: View {

    @StateObject private var viewModel = ShoppingViewModel()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                // 헤더
                HStack {
                    Text("토스쇼핑")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                    Image("Search")
                    Spacer().frame(width: 16)
                    Image("Person")
                    Spacer().frame(width: 16)
                    Image("Shopping")
                }
                .padding(.horizontal)

                HStack(spacing: 11) {
                    ForEach(viewModel.tabs, id: \.self) { tab in
                        VStack(spacing: 4) {
                            Button(action: {
                                viewModel.selectedTab = tab
                            }) {
                                Text(tab)
                                    .font(.subheadline)
                                    .foregroundColor(viewModel.selectedTab == tab ? .blue : .gray)
                            }
                            Rectangle()
                                .fill(viewModel.selectedTab == tab ? Color.blue : Color.clear)
                                .frame(height: 2)
                        }
                    }
                }
                .padding(.horizontal)

                Advertise()

                Dividers()
                    .padding(.top, 4)

                VStack(alignment: .leading, spacing: 16) {
                    ForEach(viewModel.filteredProducts) { product in
                        ProductRow(product: product)
                    }
                }
            }
        }
    }
}

#Preview {
    ShoppingFirst()
}
