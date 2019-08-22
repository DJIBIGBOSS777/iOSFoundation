//
//  ViewController.swift
//  ExampleWindowsHierarchy
//
//  Created by Fernando Gunawan on 20/08/19.
//  Copyright © 2019 Fernando Gunawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad Running")
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }


}

