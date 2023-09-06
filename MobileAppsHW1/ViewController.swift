//
//  ViewController.swift
//  MobileAppsHW1
//
//  Created by Brandon Rojas on 9/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var FirstButton: UIButton!
    @IBOutlet weak var SecondButton: UIButton!
    @IBOutlet weak var ThirdButton: UIButton!
    
    let aboutme = "My name is Brandon Rojas. Something about myself is that I like to listen to music including genres like Reggaeton and Hip-Hop. I also like to watch movies and hang out with friends."
    let favoriteHobbies = "My favorite hobbies consist of watching sports and long walks. One of my favorite sports is baseball and the team I love to watch are the New York Mets."
    let college = "The college I'm attending is Florida Atlantic University and I'm currently a junior. I plan to graduate with my Bachelor's of Science in Computer Science."
    
    // Array for storing each button
    var buttons: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttons = [aboutme, favoriteHobbies, college]
    }
    
    

    
    
    
    
    
    
    
    @IBAction func ButtonTapped(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.buttonText = buttons[0]
            } else if tappedView.tag == 1 {
                detailViewController.buttonText = buttons[1]
            } else if tappedView.tag == 2 {
                detailViewController.buttonText = buttons[2]
            }
            else {
                print("no Button was tapped, please check your selection.")
            }
        }
    }
}

