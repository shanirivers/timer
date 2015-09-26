//
//  ViewController.swift
//  Timer
//
//  Created by Shani on 9/24/15.
//  Copyright © 2015 Shani Rivers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Time variable
    var time = 0
    let SEC_PER_MIN = 60
    let SEC_PER_HOUR = 3600
    
    var timer = NSTimer()
    
    // Start timer
    @IBAction func startTimer(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
    }
    
    //Stop timer
    @IBAction func stopTimer(sender: AnyObject) {
        timer.invalidate()
    }
    
    //Stop and reset the timer
    @IBAction func resetButton(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timeDisplay.text = "00:00:00"
        
    }
    
    // Time display label and function to display the result
    @IBOutlet var timeDisplay: UILabel!

    func result () {
        time++
        let secLeft = time % SEC_PER_MIN
        let minutes = time / SEC_PER_MIN
        let minLeft = minutes % SEC_PER_MIN
        let hour = minutes / SEC_PER_HOUR
        timeDisplay.text = String(format: "%02d", hour) + ":" + String(format: "%02d", minLeft) + ":" + String(format: "%02d", secLeft)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Counter time display
        timeDisplay.text = "00:00:00"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

