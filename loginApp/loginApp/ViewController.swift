//
//  ViewController.swift
//  loginApp
//
//  Created by Shumpei Yokoi on 2022/03/01.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.delegate = self
        PasswordTextField.delegate = self
    }

    @IBAction func login(_ sender: Any) {
        label.text = "succsess!"
    }
    
    //キーボード閉じる（タップ）
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //キーボード閉じる（リターンキー）
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}

