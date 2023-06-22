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
//            LoginView()
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
