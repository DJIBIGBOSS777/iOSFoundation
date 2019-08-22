//
//  ViewController.swift
//  Segmented Control Example
//
//  Created by Fernando Gunawan on 20/08/19.
//  Copyright © 2019 Fernando Gunawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SegmentControl: UISegmentedControl!
    @IBOutlet weak var TextLabel: UILabel!
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch SegmentControl.selectedSegmentIndex
        {
        case 0:
            TextLabel.text = "First Segment Selected"
        case 1:
            TextLabel.text = "Second Segment Selected"
        default:
            break
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

