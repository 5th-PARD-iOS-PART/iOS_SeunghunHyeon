//
//  ContentView.swift
//  1st_hw_HyeonSeunghun
//
//  Created by 현승훈 on 3/15/25.
//

import SwiftUI

struct ContentView: View {
    @State private var shouldShowAlert: Bool = false
    @State private var pardshowAlert: Bool = false
    @State private var moreshowAlert: Bool = false
    var body: some View {
        
        ZStack()
        {
            
            Color(.blue)
            VStack() {
                HStack(){
                    
                    Button(){
                        pardshowAlert = true
                    }label: {
                        Image("iOS")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .opacity(0.3)
                    }
                    .font(.system(size: 40))
                    .frame(width: 160, height: 160)
                    .fontWeight(.bold)
                    .background(.gray)
                    .foregroundColor(.white)
                    .cornerRadius(150)
                    .alert("Welcome to PARD", isPresented: $pardshowAlert){
                        Button("확인", role: .cancel){}
                    }message: {
                        Text("iOS파트 최고")
                    }
                    .padding()
                    Button(){
                        shouldShowAlert = true
                    }label: {
                        Image("puppy")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                    .font(.system(size: 40))
                    .frame(width: 160, height: 160)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .cornerRadius(150)
                    .padding()
                    .alert("저희집 강아지 뽀삐에요", isPresented: $shouldShowAlert){
                        Button("확인", role: .cancel){}
                    }message: {
                        Text("귀엽죠?")
                    }
                }
                
                Spacer()
                    .frame(width:10, height: 60)
                
                Image("me")
                    
                    .frame(width: 300, height: 300, alignment: .center)
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 3, x: 3, y: 2)
                    .padding()
                
                Text("현승훈!")
                    .foregroundStyle(.white)
                    .font(.system(.title, design: .default))
                    .fontWeight(.bold)
                
                Text("#iOS OB|#INTJ|Developer")
                    .foregroundStyle(.white)
                Button("더 알아보기"){
                    moreshowAlert = true
                }
                .font(.system(size: 20))
                .frame(width: 300, height: 50)
                .fontWeight(.bold)
                .background(.white)
                .foregroundColor(.blue)
                .cornerRadius(20)
                .alert("21학번 24살입니다", isPresented: $moreshowAlert){
                    Button("Pay it Forward", role: .cancel){}
                }message: {
                    Text("이번 학기 잘 부탁드립니다")
                }
            }
            .padding()
        }
        .ignoresSafeArea()
    }
    
}

#Preview {
    ContentView()
}
