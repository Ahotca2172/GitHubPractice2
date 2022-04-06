//
//  ViewController2.swift
//  GitHubPractice2
//
//  Created by Alex Hotca on 4/6/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var animalName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = animalName
        imageView.image = UIImage(named: animalName)
        //hello
        
        // Do any additional setup after loading the view.
    }
    
}
