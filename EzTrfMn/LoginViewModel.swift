//
//  SwiftUIView.swift
//  EzTrfMn
//
//  Created by 손수현 on 2023/02/19.
//

import SwiftUI
import Firebase
import Cryptokit
import AuthenticationServices
import GoogleSignIn

class LoginViewModel: ObservableObject{
    func logGoogleUser(user: GIDGoogleUser){
        Task{
            do{
                let idToken = user.authentication.idToken else{return}
                let accessToken = user.authentication.accessToken
                
                let credential = OAuthProvider.credential(withProviderID: idToken, accessToken: accessToken)
                
                try await Auth.auth().signIn(with: credential)
                print("success")
                await MainActor.run(body: {
                    withAnimation(.elseInOut){logStatus = true}
                })
            }catch{
                await handleError(error: error)
            }
        }
    }
   
    
}

extension UIApplication{
    func rootController()->UIViewController{
        guard let window = connectedScenes.first as? UIWindowScene else{return .init()}
        guard let viewcontroller = window.windows.last?.rootViewController else{return .init()}

        return viewcontroller
    }
}
