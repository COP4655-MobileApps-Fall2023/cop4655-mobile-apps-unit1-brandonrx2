//
//  DetailViewController.swift
//  MyStory
//
//  Created by Brandon Rojas on 9/7/23.
//

import UIKit

class DetailViewController: UIViewController {

    //property
    var choice: Choice?
    @IBOutlet weak var choiceLabel: UILabel!
    @IBOutlet weak var AboutMeImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        if let choice = choice{
            choiceLabel.text = String(choice.paragraph)
            AboutMeImageView.image = choice.image
        }

        // Do any additional setup after loading the view.
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
