//
//  AddViewController.swift
//  Movie
//
//  Created by Eman on 17/01/2035.
//

import UIKit

class AddViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    
    @IBOutlet weak var titlefi: UITextField!
    
    
    @IBOutlet weak var imageV: UIImageView!
    
    
    
    @IBOutlet weak var ratingfi: UITextField!
    
    
    @IBOutlet weak var yearfi: UITextField!
    
    
    
    @IBOutlet weak var genrefi: UITextField!
    
    
    
    
    var imagee :UIImage?
    var tempmov = movies()
    var viewObj : AddProtocol?
    //var obj = TableViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    @IBAction func addbtm(_ sender: Any) {
      //  var x = Int (yearfi.text!) ?? 0
      //  var y = Double (ratingfi.text!)!
       // let tempmov = movies(title:titlefi.text! , image: imgfi.text! , rating: y, releaseYear: x , gener: genrefi.text?.components(separatedBy: ","))
        if titlefi.text! == "" || yearfi.text! == "" || ratingfi.text! == "" || genrefi.text! == ""
        {
            var alert = UIAlertController(title:"Warning !" , message: "you must complete your data !!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default , handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel , handler: nil))
            self.present(alert, animated: true)
        }
        else
        {
            tempmov.title = titlefi.text!
    //       tempmov.gener![0] = genrefi.text!
            //tempmov.image =  info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage") ]as!String
            tempmov.releaseYear = Int (yearfi.text!)!
            tempmov.rating = Double (ratingfi.text!)!
            tempmov.gener = genrefi.text?.components(separatedBy: ",")
            tempmov.image = imagee
            viewObj!.addMovie(mov: tempmov)
            self.navigationController?.popViewController(animated: true)
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

    @IBAction func selectimgbtm(_ sender: UIButton) {
        
        var picker :UIImagePickerController = UIImagePickerController()
        picker.delegate = self
        if UIImagePickerController.isSourceTypeAvailable(.camera)
        {
            picker.sourceType = .camera
        }
        else if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
        {
            picker.sourceType = .photoLibrary
            picker.allowsEditing = true
        }
        
        self.present(picker, animated: true)
        
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        
        print ("chossen")
        print(info)
        //let imagee = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage") ] as?UIImage
        
        if let imagee = info[UIImagePickerController.InfoKey.originalImage]as? UIImage
        {
            imageV.image = imagee
            self.imagee = imagee
            
     }
        picker.dismiss(animated: true)
    }

  
 func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        print ("cancel")
        picker.dismiss(animated: true)
    }

    
}
