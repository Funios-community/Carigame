//
//  LoginViewModel.swift
//  Carigame
//
//  Created by Hario Budiharjo on 11/09/22.
//

import RxRelay

class LoginViewModel {
    
    let username: BehaviorRelay<String?> = BehaviorRelay(value: nil)
    let password: BehaviorRelay<String?> = BehaviorRelay(value: nil)
    
    let loginSuccess: PublishRelay<Bool> = PublishRelay()
    let errorMessage: PublishRelay<String> = PublishRelay()
    
    func login() {
        guard let uname = username.value, uname != "",let pass = password.value, pass != "" else {
            errorMessage.accept("Username atau password harap diisi")
            return
        }
        
        if username.value == "user" && password.value == "123" {
            loginSuccess.accept(true)
        } else {
            errorMessage.accept("Username atau password salah!")
        }
    }
    
}
