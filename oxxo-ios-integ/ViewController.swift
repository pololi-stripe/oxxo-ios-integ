//
//  ViewController.swift
//  oxxo-ios-integ
//
//  Created by Polo Li on 7/6/20.
//  Copyright © 2020 Polo. All rights reserved.
//

import UIKit
import Stripe
import Alamofire

class ViewController: UIViewController, STPAuthenticationContext {

    // MARK: UIViews
    var demoName = UILabel()
    var fullname = UITextField()
    var email = UITextField()
    var payButton = UIButton()
    var loadingSpinner = UIActivityIndicatorView()
    var outputTextView = UITextView()

    #warning("Please use your own backend url below")
    let backendURL : String = "https://example.com/"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupUI()
    }

    // MARK: UIView setup
    func setupUI() {
        self.demoName.frame = CGRect(x: 0, y: 70, width: self.view.frame.width, height: 50)
        self.demoName.text = "OXXO iOS Demo"
        self.demoName.textAlignment = .center
        self.demoName.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        self.view.addSubview(self.demoName)

        self.fullname.frame = CGRect(x: 0, y: 130, width: self.view.frame.width - 50, height: 50)
        self.fullname.center.x = self.view.center.x
        self.fullname.placeholder = "full name"
        self.fullname.borderStyle = .line
        self.fullname.autocorrectionType = .no
        self.view.addSubview(self.fullname)

        self.email.frame = CGRect(x: 0, y: 190, width: self.view.frame.width - 50, height: 50)
        self.email.center.x = self.view.center.x
        self.email.placeholder = "email"
        self.email.borderStyle = .line
        self.email.autocorrectionType = .no
        self.view.addSubview(self.email)

        self.payButton.frame = CGRect(x: 0, y: 260, width: 150, height: 40)
        self.payButton.center.x = self.view.center.x
        self.payButton.setTitle("Submit Payment", for: .normal)
        self.payButton.setTitleColor(UIColor.white, for: .normal)
        self.payButton.layer.cornerRadius = 5.0
        self.payButton.backgroundColor = UIColor.init(red: 50/255, green: 50/255, blue: 93/255, alpha: 1.0)
        self.payButton.layer.borderWidth = 1.0
        self.payButton.addTarget(self, action: #selector(pay), for: .touchUpInside)
        self.view.addSubview(self.payButton)

        self.loadingSpinner.color = UIColor.darkGray
        self.loadingSpinner.frame = CGRect(x: 0, y: 350, width: 25, height: 25)
        self.loadingSpinner.center.x = self.view.center.x

        self.view.addSubview(self.loadingSpinner)

        self.outputTextView.frame = CGRect(x: 0, y: 420, width: self.view.frame.width - 50, height: 100)
        self.outputTextView.center.x = self.view.center.x
        self.outputTextView.textAlignment = .left
        self.outputTextView.font = UIFont.systemFont(ofSize: 18)
        self.outputTextView.text = ""
        self.outputTextView.layer.borderColor = UIColor.purple.cgColor
        self.outputTextView.layer.borderWidth = 1.0
        self.outputTextView.isEditable = false

        self.view.addSubview(self.outputTextView)
    }

    func startLoading() {
        DispatchQueue.main.async {
            self.loadingSpinner.startAnimating()
            self.loadingSpinner.isHidden = false
        }
    }

    func stopLoading() {
        DispatchQueue.main.async {
            self.loadingSpinner.stopAnimating()
            self.loadingSpinner.isHidden = true
        }
    }

    func displayStatus(_ message: String) {
        DispatchQueue.main.async {
            self.outputTextView.text! += message + " \n"
            self.outputTextView.scrollRangeToVisible(NSMakeRange(self.outputTextView.text.count - 1, 1))
        }
    }

    @objc func pay() {
        self.startLoading()
        print("Creating PaymentIntent")
        self.displayStatus("Creating PaymentIntent")

        // 1) [server-side] Create a PaymentIntent
        // 2) [client-side] Confirm the PaymentIntent

    }
    // MARK: STPAuthenticationContext Delegate

    func authenticationPresentingViewController() -> UIViewController {
        return self
    }
}

