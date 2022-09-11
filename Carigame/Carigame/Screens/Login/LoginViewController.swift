//
//  LoginViewController.swift
//  Carigame
//
//  Created by Hario Budiharjo on 11/09/22.
//

import UIKit
import RxSwift
import RxCocoa

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    let viewModel = LoginViewModel()
    let disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setObserver()
    }
    
    private func setObserver() {
        emailTf.rx.text.orEmpty.bind(to: viewModel.username).disposed(by: disposeBag)
        passwordTf.rx.text.orEmpty.bind(to: viewModel.password).disposed(by: disposeBag)
        
        viewModel.loginSuccess.subscribe { success in
            if success.event.element ?? false {
                let homeVc = HomeViewController(nibName: String(describing: HomeViewController.self), bundle: nil)
                self.present(homeVc, animated: true)
            }
        }.disposed(by: disposeBag)
        
        viewModel.errorMessage.subscribe { message in
            print(message)
        }.disposed(by: disposeBag)
        
        loginButton.rx.tap.subscribe { _ in
            self.viewModel.login()
        }.disposed(by: disposeBag)
    }

}
