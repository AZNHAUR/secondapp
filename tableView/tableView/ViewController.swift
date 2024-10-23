//
//  ViewController.swift
//  tableView
//
//  Created by Aruzhan Ashim on 23.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var albumLabel: UILabel!
    
    @IBOutlet weak var artistLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var album = Album()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.image = UIImage(named: album.albumImage)
        albumLabel.text = album.albumName
        artistLabel.text = album.artistName
        descriptionLabel.text = album.description
        
    }


}

