//
//  ProductsVC.swift
//  SwiftSwag
//
//  Created by Fernando Gunawan on 22/08/19.
//  Copyright © 2019 David Gunawan. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource {
    @IBOutlet weak var produkView: UICollectionView!
    @IBOutlet weak var asas: UILabel!
    var dataNama : String = ""
    let product1 = [
        Produtcs(produtcsName: "AHHA Hoodie Goblog 1", produtcsImage: "hoodie01.png", captionData: "$30"),
        Produtcs(produtcsName: "AHHA Hoodie Goblog 2", produtcsImage: "hoodie02.png", captionData: "$37"),
        Produtcs(produtcsName: "AHHA Hoodie Goblog 3", produtcsImage: "hoodie03.png", captionData: "$38"),
        Produtcs(produtcsName: "AHHA Hoodie Goblog 4", produtcsImage: "hoodie04.png", captionData: "$20"),
    ]
    let product2 = [
        Produtcs(produtcsName: "Digitals 01", produtcsImage: "digital.png", captionData: "$30")
    ]
    let product3 = [
        Produtcs(produtcsName: "Hats 01", produtcsImage: "hat01.png", captionData: "$30"),
        Produtcs(produtcsName: "Hats 02", produtcsImage: "hat02.png", captionData: "$37"),
        Produtcs(produtcsName: "Hats 03", produtcsImage: "hat03.png", captionData: "$38"),
        Produtcs(produtcsName: "Hats 04", produtcsImage: "hat04.png", captionData: "$20"),
    ]
    let product4 = [
        Produtcs(produtcsName: "Shirts 01", produtcsImage: "shirt01.png", captionData: "$15"),
        Produtcs(produtcsName: "Shirts 02", produtcsImage: "shirt02.png", captionData: "$17"),
        Produtcs(produtcsName: "Shirts 03", produtcsImage: "shirt03.png", captionData: "$14"),
        Produtcs(produtcsName: "Shirts 04", produtcsImage: "shirt04.png", captionData: "$13"),
        Produtcs(produtcsName: "Shirts 05", produtcsImage: "shirt05.png", captionData: "$12"),
    ]
    var produk0 = [Produtcs(produtcsName: "", produtcsImage: "", captionData: "")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return produk0.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = produkView.dequeueReusableCell(withReuseIdentifier: "ProductsCell", for: indexPath) as? ProductsCell{
            let produk = produk0[indexPath.row]
            cell.produkImage.image = UIImage(named: produk.produtcsImage)
            cell.produkName.text = produk.produtcsName
            cell.produkPrice.text = produk.captionData
            return cell
        }
        else {
            return ProductsCell()
        }
    }
    func penentuProduk(){
        if dataNama == "Hoodies"{
            produk0 = product1
            asas.text = "Hoodies"
        }
        else if dataNama == "Digital"{
            produk0 = product2
            asas.text = "Digital"
        }
        else if dataNama == "Hats"{
            produk0 = product3
            asas.text = "Hats"
        }
        else if dataNama == "Shirts"{
            produk0 = product4
            asas.text = "Shirts"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        produkView.dataSource = self
        penentuProduk()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
