//
//  SignUpVC.swift
//  KaratasSozluk
//
//  Created by Ataugur Karatas on 16.11.2022.
//

import UIKit
import Firebase

class SignUpVC: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var repeatPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        let pass = passwordText.text ?? ""
        let repeatPass = repeatPassword.text ?? ""
        let email = emailText.text ?? ""
        
        if pass.isEmpty || email.isEmpty || repeatPass != pass {
            Common.showAlert(title: "Bilgileri Kontroler Ediniz", message: "Lütfen şifre veya email giriniz.", vc: self)
            return
        }
        createUser(email: email, password: pass)
    }
    
    func createUser(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) {
            (result, error) in
            if error != nil {
                Common.showAlert(title: "Uyarı!", message: error?.localizedDescription ?? "Kullanıcı Oluşturulamadı.", vc: self)
            } else {
                _ = self.navigationController?.popToRootViewController(animated: true)
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
