//
//  ViewController.swift
//  Bangsay
//
//  Created by Fernando Gunawan on 20/08/19.
//  Copyright © 2019 Fernando Gunawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Rata: UILabel!
    @IBOutlet weak var Tinggi: UILabel!
    @IBOutlet weak var Penentu: UILabel!
    @IBOutlet weak var Berat: UILabel!
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var segmentCtrl: UISegmentedControl!
    @IBOutlet var tulisan: [UILabel]!
    var style: UIStatusBarStyle = .default
    var Hasil: Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func gantiWarna(_ color : UIColor){
        for warna in tulisan{
            warna.textColor = color
        }
    }
    var berat : Float = 0
    @IBAction func BeratBadan(_ sender: UISlider) {
        let currentValue = Float(sender.value)
        Berat.text = "\(String(format: "%.1f", currentValue)) KG"
        berat = currentValue
        bmi()
    }
    var tinggi : Float = 0
    @IBAction func TinggiBadan(_ sender: UISlider) {
        let currentValue = Float(sender.value)
        Tinggi.text = "\(String(format: "%.2f", currentValue)) M"
        tinggi = currentValue
        bmi()
    }
    @IBAction func Switcher(_ sender: UISegmentedControl) {
        switch segmentCtrl.selectedSegmentIndex{
        case 0 :
            self.view.backgroundColor = .white
            self.style = .default
            gantiWarna(.black)
            setNeedsStatusBarAppearanceUpdate()
        case 1 :
            self.view.backgroundColor = .black
            self.style = .lightContent
            gantiWarna(.white)
            setNeedsStatusBarAppearanceUpdate()
        default :
            break
        }
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.style
    }
    private func bmi(){
        Hasil = (berat / (tinggi*tinggi))
        if (Hasil < 18) {
            Penentu.text = "Underweight"
            Penentu.textColor = .magenta
        } else if (Hasil >= 18 && Hasil < 25) {
            Penentu.text = "Normal"
            Penentu.textColor = .green
        } else if (Hasil >= 25 && Hasil < 30) {
            Penentu.text = "Pre-obese"
            Penentu.textColor = .purple
        } else {
            Penentu.text = "Obese"
            Penentu.textColor = .red
        }
        Rata.text = "\(String(format: "%.2f", Hasil)) KG/M2"
    }
    
}

