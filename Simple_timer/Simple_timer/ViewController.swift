//
//  ViewController.swift
//  Simple_timer
//
//  Created by Linda Lee on 6/22/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleButton: UIButton!
    @IBOutlet weak var label: UILabel!
    
    var timeRemaining: Int = 10
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //circleButton
        circleButton.layer.cornerRadius = circleButton.frame.width / 2
        circleButton.layer.masksToBounds = true
        
    }
    
    @IBAction func startTapped(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(step), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopTapped(_ sender: Any)
    {
        timer.invalidate()
    }
    
    @IBAction func resetTapped(_ sender: Any)
    {
        timer.invalidate()
        timeRemaining = 10
        label.text = "\(timeRemaining)"
    }
    
    @objc func step()
    {
        if timeRemaining > 0
        {
            timeRemaining -= 1
        }
        else
        {
            timer.invalidate()
            timeRemaining = 10
        }
        label.text = "\(timeRemaining)"
    }
}

