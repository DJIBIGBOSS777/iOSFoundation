//
//  ViewController.swift
//  SwiftSwag
//
//  Created by David Gunawan on 21/08/19.
//  Copyright © 2019 David Gunawan. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let category = [
        Category(categoryName: "hoodies", categoryImage: "hoodies.png"),
        Category(categoryName: "digital", categoryImage: "digital.png"),
        Category(categoryName: "hats", categoryImage: "hats.png"),
        Category(categoryName: "shirts", categoryImage: "shirts.png"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

