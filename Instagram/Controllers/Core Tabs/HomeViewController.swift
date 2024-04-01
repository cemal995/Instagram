//
//  HomeViewController.swift
//  Instagram
//
//  Created by Cemalhan Alptekin on 1.04.2024.
//
import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthanciated()
            
    }
    private func handleNotAuthanciated() {
        // Check Auth Status
        if Auth.auth().currentUser == nil {
            // Show Log-In Screen
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }

}

