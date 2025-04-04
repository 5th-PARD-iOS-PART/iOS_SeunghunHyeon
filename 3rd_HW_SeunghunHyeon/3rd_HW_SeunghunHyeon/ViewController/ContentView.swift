//
//  ContentView.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 3/30/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                Image("post")
                Text("할 일").font(.title2)
                Image("more1")
                Spacer().frame(width: 160)
                Image("pay")
                Spacer().frame(width: 20)
                ZStack(alignment: .topTrailing) {
                    Image("bell")
                    Image("redball")
                        .offset(x: 5, y: -1)
                }
            }
            
                
                List {
                    Section {
                        TeethRow(data: MockData(title: "teeth", name: "teeth"))
                    }
                    
                    Section {
                        Tossbank()
                    }
                    Section {
                        ForEach(MockData.modeling[0]) { item in
                            switch item.name {
                            case "Hana":
                                Hana(data: item)
                            case "toss":
                                NavigationLink(destination: TossbankDetail()){
                                    Toss(data: item)
                                }
                            case "tosspay":
                                Tosspay(data: item)
                            case "global":
                                global(data: item)
                            case "Kb":
                                Kb(data: item)
                            case "ibk":
                                Ibk(data: item)
                            case "kakao":
                                Kakao(data: item)
                            case "ibk2":
                                Ibk2(data: item)
                            case "Kbank":
                                Kbank(data: item)
                            case "coin":
                                coin(data: item)
                            default:
                                EmptyView()
                            }
                        }
                    }
                    Section{
                        Used(data: MockData(title: "Used", name: "Used"))
                    }
                    Section{
                        credit(data: MockData(title: "credit", name: "credit"))
                    }
                    Section{
                        Ad(data: MockData(title: "Ad", name: "Ad"))
                    }
                    Section(header: Text("유재혁님을 위해 준비했어요").font(.headline)) {
                        Card2()
                            .listRowInsets(EdgeInsets())
                            .listRowBackground(Color.clear)
                    }

                    Section(){
                        ForEach(MockData.modeling[1]) { item in
                            switch item.name {
                            case "ETCpap":
                                ETCpap(data: item)
                            case "ETCcard":
                                ETCcard(data: item)
                            case "cal":
                                ETCcal(data: item)
                            default:
                                EmptyView()
                            }
                        }
                    }
                }
            }
//            .listStyle(.grouped)
            .listSectionSpacing(20)
        }
    }
}


#Preview {
    ContentView()
}
