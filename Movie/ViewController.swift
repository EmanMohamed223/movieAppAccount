//
//  ViewController.swift
//  Movie
//
//  Created by Eman on 16/01/2035.
//

import UIKit
import Cosmos

class ViewController: UIViewController {
    var data :movies?
 
    
    @IBOutlet weak var year: UITextField!
    
    
    

    
    
    
    
    
    @IBOutlet weak var tilab: UILabel!
    
    
    @IBOutlet weak var genre: UILabel!
    
    
    
    @IBOutlet weak var img: UIImageView!
    
    
    @IBOutlet weak var rating: CosmosView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //    Do any additional setup after loading the view.
        tilab.text  = data?.title
        rating.rating =  data!.rating
        rating.settings.fillMode = .precise
        year.text = String( data!.releaseYear)
        for i in 0..<data!.gener!.count
        {  genre.text! += data!.gener![i] + ","}
        img.image = data!.image
    }


}


