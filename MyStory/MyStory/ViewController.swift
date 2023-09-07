//
//  ViewController.swift
//  MyStory
//
//  Created by Brandon Rojas on 9/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let aboutMe = Choice(image: UIImage(named: "photoOfMe")!, paragraph: "My name is Brandon Rojas. Something about myself is that I like to listen to music including genres like Reggaeton and Hip-Hop. I also like to watch movies and hang out with friends.")
    let favoriteHobbies = Choice(image: UIImage(named: "Baseball")!, paragraph: "My favorite hobbies consist of watching sports and long walks. One of my favorite sports is baseball and the team I love to watch are the New York Mets.")
    let  college = Choice(image: UIImage(named: "FAU_Owls_logo.svg")!, paragraph: "The college I'm attending is Florida Atlantic University and I'm currently a junior. I plan to graduate with my Bachelor's of Science in Computer Science.")
 
    var choices: [Choice] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Store the label choices
        choices = [aboutMe, favoriteHobbies, college]
    }
 
    
    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.choice = choices[0]
            } else if tappedView.tag == 1 {
                detailViewController.choice = choices[1]
            } else if tappedView.tag == 2 {
                detailViewController.choice = choices[2]
            }else {
                print("no choices was tapped, please check your selection.")
            }
        }
    }
    
}

