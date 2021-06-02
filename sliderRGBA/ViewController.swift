//
//  ViewController.swift
//  sliderRGBA
//
//  Created by NIKOLAY OSIPOV on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var valueRedColorLabel: UILabel!
    @IBOutlet weak var valueGreenColorLabel: UILabel!
    @IBOutlet weak var valueBlueColorLabel: UILabel!
    @IBOutlet weak var valueAlphaColorLabel: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    @IBOutlet weak var alphaColorSlider: UISlider!
    
    private var valueRedColor: CGFloat = 1.0
    private var valueGreenColor: CGFloat = 1.0
    private var valueBlueColor: CGFloat = 1.0
    private var valueAlphaColor: CGFloat = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorSlider.value = 1.0
        greenColorSlider.value = 1.0
        blueColorSlider.value = 1.0
        alphaColorSlider.value = 1.0
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        
        colorView.backgroundColor = UIColor.init(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: CGFloat(alphaColorSlider.value)
        )
        
        valueRedColorLabel.text = String(round(redColorSlider.value * 100) / 100)
        valueGreenColorLabel.text = String(round(greenColorSlider.value * 100) / 100)
        valueBlueColorLabel.text = String(round(blueColorSlider.value * 100) / 100)
        valueAlphaColorLabel.text = String(round(alphaColorSlider.value * 100) / 100)    }
}

