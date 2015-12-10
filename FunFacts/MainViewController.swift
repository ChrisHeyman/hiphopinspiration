//
//  ViewController.swift
//  FunFacts
//
//  Created by Christopher Heyman on 11/8/15.
//  Copyright © 2015 Christopher Heyman. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "showLocalNotification", name: "DisplayNotification", object: nil)
        funFactLabel.text = factBook.randomFact()
        
    }
    
    func showLocalNotification() {
        let alert = UIAlertController(title: "Oops!", message:"This feature isn't available right now", preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default) { _ in
            // Put here any code that you would like to execute when
            // the user taps that OK button (may be empty in your case if that's just
            // an informative alert)
        }
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
        print("showLocalNotification")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomColor = colorWheel.randomColor();
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factBook.randomFact()
    }

}