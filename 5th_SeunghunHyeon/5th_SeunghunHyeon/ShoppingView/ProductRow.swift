//
//  ProductRow.swift
//  5th_SeunghunHyeon
//
//  Created by 현승훈 on 5/2/25.
//

import SwiftUI

struct ProductRow: View {
    let product: Product

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image(product.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            Text(product.name)
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.horizontal)
            HStack {
                Text("\(product.price)원")
                    .font(.headline)
                Text("\(product.originalPrice)원")
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
            }.padding(.horizontal)
            Text(product.views)
                .font(.caption2)
                .foregroundColor(.gray)
                .padding(.horizontal)
        }
    }
}
