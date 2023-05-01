//
//  Login.swift
//  Movie
//
//  Created by Eman on 13/01/2023.
//

import UIKit

class Login: UIViewController {
    var signup = SignUp()
    @IBOutlet weak var logintxt: UITextField!
    
    
    
    @IBOutlet weak var passwordtxt: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if signup.flage == true
        {
            var movtable = self.storyboard?.instantiateViewController(withIdentifier: "table")as!TableViewController
            self.navigationController?.pushViewController(movtable, animated: true)
            
        }
        // Do any additional setup after loading the view.
    }
    
    
@IBAction func lohinbtm(_ sender: UIButton) {
 
    var s = (String)(signup.pass)
  
    if (logintxt.text! == signup.name && passwordtxt.text! == s )
    {
        UserDefaults.standard.set(true, forKey: "loged")
        var movtable = self.storyboard?.instantiateViewController(withIdentifier: "table")as!TableViewController
        self.navigationController?.pushViewController(movtable, animated: true)
        
    }
    else {
        print ("hi")
    }
        
        
    }
    
    

    @IBAction func signupbtm(_ sender: UIButton) {
        
        let signupScre = self.storyboard?.instantiateViewController(withIdentifier: "sign") as!SignUp
        self.navigationController?.pushViewController(signupScre, animated: true)
        
        
        
        
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
