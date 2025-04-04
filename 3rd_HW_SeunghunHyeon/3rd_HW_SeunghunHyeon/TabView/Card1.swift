//
//  Card1.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import SwiftUI

struct Card1: View {
    let title: String
        let imageName: String

        var body: some View {
            HStack {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)

                Spacer()

                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
            }
            .padding()
            .frame(width: 170, height: 90)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
        }
    }
