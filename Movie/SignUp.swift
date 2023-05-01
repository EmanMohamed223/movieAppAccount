//
//  SignUp.swift
//  Movie
//
//  Created by Eman on 13/01/2023.
//

import UIKit

class SignUp: UIViewController {

    
    @IBOutlet weak var usernametxt: UITextField!
    
    
    
    @IBOutlet weak var Passtxt: UITextField!
    
    
    
    let defaults = UserDefaults.standard
    let name = UserDefaults.standard.string(forKey: "userNameKey")
    let pass = UserDefaults.standard.integer(forKey: "passKey")
    let flage = UserDefaults.standard.bool(forKey: "loged")
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        // Do any additional setup after loading the view.
    }
    

    
    
    @IBAction func dnbtm(_ sender: UIButton) {
       
        UserDefaults.standard.set(usernametxt.text, forKey: "userNameKey")
        var x = Int(Passtxt.text!)
        UserDefaults.standard.set( x , forKey: "passKey")
        var log = self.storyboard?.instantiateViewController(withIdentifier: "log") as!Login
        self.navigationController?.popViewController(animated: true)
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
