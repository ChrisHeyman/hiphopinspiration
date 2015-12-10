//
//  SettingsViewController.swift
//  HipHopInspiration
//
//  Created by Christopher Heyman on 12/9/15.
//  Copyright © 2015 Christopher Heyman. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var timeToSetDaily: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveDailyTime(sender: AnyObject) {
        
        if let scheduledLocalNotifications = UIApplication.sharedApplication().scheduledLocalNotifications {
            for notification in scheduledLocalNotifications {
                print(notification)
                UIApplication.sharedApplication().cancelLocalNotification(notification)
            }
        }
        
        let hourFormatter = NSDateFormatter()
        let minuteFormatter = NSDateFormatter()
        hourFormatter.dateFormat = "HH"
        minuteFormatter.dateFormat = "mm"
        let strHour = Int(hourFormatter.stringFromDate(timeToSetDaily.date))
        let strMinute = Int(minuteFormatter.stringFromDate(timeToSetDaily.date))
        print(strHour)
        print(strMinute)
        
        let timeFire: NSDateComponents = NSDateComponents()
        timeFire.hour = strHour!
        timeFire.minute = strMinute!
        timeFire.timeZone = NSTimeZone.defaultTimeZone()
        
        let calender: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        let fireTime: NSDate = calender.dateFromComponents(timeFire)!
        
        let localNotification:UILocalNotification = UILocalNotification()
        localNotification.alertAction = "Testing notifications on iOS8"
        localNotification.alertBody = "Woww it works!!"
        localNotification.fireDate = fireTime
        localNotification.applicationIconBadgeNumber = 1
        localNotification.soundName = UILocalNotificationDefaultSoundName
        localNotification.repeatInterval = NSCalendarUnit.Day
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)

//        let localNotification:UILocalNotification = UILocalNotification()
//        localNotification.alertAction = "Testing notifications on iOS8"
//        localNotification.alertBody = "Woww it works!!"
//        localNotification.fireDate = NSDate(timeIntervalSinceNow: 5)
//        localNotification.applicationIconBadgeNumber = 1
//        localNotification.soundName = UILocalNotificationDefaultSoundName
//        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
