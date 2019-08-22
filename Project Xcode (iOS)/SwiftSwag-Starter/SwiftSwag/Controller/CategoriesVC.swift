//
//  ViewController.swift
//  SwiftSwag
//
//  Created by David Gunawan on 21/08/19.
//  Copyright © 2019 David Gunawan. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryCell{
            let kategori = category[indexPath.row]
            cell.labelHoodies.text = kategori.categoryName
            cell.imageHoodies.image = UIImage(named: kategori.categoryImage)
            return cell
        }
        else{
            return CategoryCell()
        }
        
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    let category = [
        Category(categoryName: "Hoodies", categoryImage: "hoodies.png"),
        Category(categoryName: "Digital", categoryImage: "digital.png"),
        Category(categoryName: "Hats", categoryImage: "hats.png"),
        Category(categoryName: "Shirts", categoryImage: "shirts.png"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    var kategoriNama : String = ""
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kategori = category[indexPath.row]
        kategoriNama = kategori.categoryName
        performSegue(withIdentifier: "ProductsVC", sender: kategori)
        print(kategoriNama)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ProductsVC
        destinationVC.dataNama = kategoriNama
    }

}

