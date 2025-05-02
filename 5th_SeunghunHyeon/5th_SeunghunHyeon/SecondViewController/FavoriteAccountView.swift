//
//  FavoriteAccountView.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/10/25.
//
import SwiftUI

struct FavoriteAccountView: View {
    let accounts = [
        OtherData(title: "하나은행", name: "WINGO통장"),
        OtherData(title: "삼성증권", name: "종합예매")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("내 계좌")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
                Text("+18개")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            VStack(spacing: 12) {
                ForEach(accounts) { account in
                    NavigationLink(destination: {
                        let balance: String
                        switch account.name {
                        case "WINGO통장":
                            balance = "38,841원"
                        case "종합예매":
                            balance = "55,800원"
                        default:
                            balance = "0원"
                        }
                        return Tossmoney(balance: balance)
                    }()) {
                        HStack(spacing: 12) {
                            Image(account.title)
                                .resizable()
                                .frame(width: 36, height: 36)
                                .cornerRadius(8)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(account.name)
                                    .font(.headline)
                                Text("\(account.title) 123-891652-62107")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            Image("favorite")
                        }
                        .contentShape(Rectangle())
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
        }
        .padding(.horizontal)
    }
}

                
#Preview {
    FavoriteAccountView()
}
