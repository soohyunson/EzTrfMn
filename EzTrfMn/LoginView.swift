//
//  LoginView.swift
//  EzTrfMn
//
//  Created by 손수현 on 2023/02/19.
//

import SwiftUI
import Firebase
import AuthenticationServices
import GoogleSignIn
import GoogleSignInSwift

struct LoginView: View {
    var body: some View {
        Text("로그인")
        HStack(spacing: 8){
            if let clientID = FirebaseApp.app()?.options.clientID{
                GoogleSignInButton{
                               GIDSignIn.sharedInstance.signIn(with:
                                    .init(clientID: clientID), presenting:
                                                                UIApplication.shared.rootController()){
                                   user, error in if let error = error{
                                       print(error.localizedDescription)
                                       return
                                   }
                               }
                           }
                .blendMode(.overlay)
            }

        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
