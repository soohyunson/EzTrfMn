//
//  ContentView.swift
//  EzTrfMn
//
//  Created by 손수현 on 2023/02/17.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct ContentView: View {
    @AppStorage("log_status") var logStatus: Bool = false
    var body: some View {
//      LoginView()
        if logStatus{
            
        }else{
            LoginView()
        }
    }
    
    @ViewBuilder
    func DemoHome()->some View{
        NavigationStack{
            Text("로그인")
                .navigationTitle("구글로그인")
                .toolbar{
                    ToolbarItem{
                        Button("logout"){
                            try? Auth.auth().signOut()
                            GIDGoogleUser.sharedInstance.signOut()
                            withAnimation(.easeInOut){
                                logStatus = false
                            }
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
