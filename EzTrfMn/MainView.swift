//
//  MainView.swift
//  EzTrfMn
//
//  Created by 손수현 on 2023/06/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            Text("Logo")
                .bold()
                .font(.system(size: 40))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all)
            Text("Test님 환영합니다.")
                .bold()
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            Button {
                print("페이잔액")
            } label: {
                Text("페이잔액")
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: 350, minHeight: 0, maxHeight: 180)
                    .font(.system(size: 20))
                    .background(Color.red)
            }.cornerRadius(15)

            
            HStack{
                VStack{
                    Button {
                        print("간편송금")
                    } label: {
                        Text("간편송금")
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: 170, minHeight: 0, maxHeight: 90)
                            .font(.system(size: 20))
                            .background(Color.gray)
                    }.cornerRadius(15)
                    
                    Button {
                        print("페이관리")
                    } label: {
                        Text("페이관리")
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: 170, minHeight: 0, maxHeight: 90)
                            .font(.system(size: 20))
                            .background(Color.gray)
                    }.cornerRadius(15)
                }

                
                Button {
                    print("QR촬영")
                } label: {
                    Text("QR촬영")
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: 170, minHeight: 0, maxHeight: 190)
                        .font(.system(size: 20))
                        .background(Color.gray)
                }.cornerRadius(15)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
