//
//  ViewController.swift
//  fff
//
//  Created by fpmi on 15.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var sum: UITextField!
    @IBOutlet weak var serviceLevel: UISlider!
    @IBOutlet weak var dishLevel: UISlider!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculation(sender: AnyObject) {
        var res = (sum.text as NSString).floatValue * (1 + (serviceLevel.value + dishLevel.value)/200)
        var resInt = Int(res/100) * 100
        result.text =  "Sum to pay: " + String(resInt)
    }

}

