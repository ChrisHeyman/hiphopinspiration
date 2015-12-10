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
        
//        if let scheduledLocalNotifications = UIApplication.sharedApplication().scheduledLocalNotifications {
//            for notification in scheduledLocalNotifications { // loop through notifications...
//                print(notification)
//                UIApplication.sharedApplication().cancelLocalNotification(notification)
////                if (notification.userInfo!["UUID"] as! String == item.UUID) { // ...and cancel the notification that corresponds to this TodoItem instance (matched by UUID)
////                    UIApplication.sharedApplication().cancelLocalNotification(notification) // there should be a maximum of one match on UUID
////                    break
////                }
//            }
//        }
        
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
        
//        var timeFire: NSDateComponents = NSDateComponents()
//        timeFire.hour = 7
//        timeFire.minute = 15
//        timeFire.timeZone = NSTimeZone.defaultTimeZone()
//        
//        var calender: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
//        var fireTime: NSDate = calender.dateFromComponents(timeFire)!
//        
//        var localNotification:UILocalNotification = UILocalNotification()
//        localNotification.alertAction = "Testing notifications on iOS8"
//        localNotification.alertBody = "Woww it works!!"
//        localNotification.fireDate = fireTime
//        localNotification.applicationIconBadgeNumber = 1
//        localNotification.soundName = UILocalNotificationDefaultSoundName
//        localNotification.repeatInterval = NSCalendarUnit.Day
//        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        
//        var localNotification:UILocalNotification = UILocalNotification()
//        
//        localNotification.alertAction = "Testing notifications on iOS8"
//        
//        localNotification.alertBody = "Woww it works!!"
//        
//        localNotification.fireDate = NSDate(timeIntervalSinceNow: 10)
//        
//        localNotification.applicationIconBadgeNumber = 1
//        
//        localNotification.soundName = UILocalNotificationDefaultSoundName
//        
//        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
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