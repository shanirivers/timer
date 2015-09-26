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
        timeDisplay.text = String(time)
        
    }
    
    // Time display label and function to display the result
    @IBOutlet var timeDisplay: UILabel!

    func result () {
        timeDisplay.text = String(time++)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Counter time display
        timeDisplay.text = String(time)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

