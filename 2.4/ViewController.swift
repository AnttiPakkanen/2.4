//
//  ViewController.swift
//  2.4
//
//  Created by автосалон on 29.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var screen: UIView!
    @IBOutlet var firstColor: UILabel!
    @IBOutlet var firstColorData: UILabel!
    @IBOutlet var secondColor: UILabel!
    @IBOutlet var secondColorData: UILabel!
    @IBOutlet var thirdColor: UILabel!
    @IBOutlet var thirdColorData: UILabel!
    @IBOutlet var firstColorSlider: UISlider!
    @IBOutlet var secondColorSlider: UISlider!
    @IBOutlet var thirdColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstColor.text = "Red"
        secondColor.text = "Green"
        thirdColor.text = "Blue"
        firstColorSlider.layer.cornerRadius = firstColorSlider.frame.height / 2
        secondColorSlider.layer.cornerRadius = secondColorSlider.frame.height / 2
        thirdColorSlider.layer.cornerRadius = thirdColorSlider.frame.height / 2
        setupFirstColorSlider()
        setupFirstColorData()
        setupSecondColorSlider()
        setupSecondColorData ()
        setupThirdColorSlider()
        setupThirdColorData()
    }

    @IBAction func slidersActions() {
        firstColorData.text = "\(Int(firstColorSlider.value))"
        secondColorData.text = "\(Int(secondColorSlider.value))"
        thirdColorData.text = "\(Int(thirdColorSlider.value))"
        changeColor()
    }
    
    private func setupFirstColorData () {
        firstColorData.text = String(firstColorSlider.value)
    }
    
    private func setupFirstColorSlider () {
        firstColorSlider.value = 0
        firstColorSlider.minimumValue = 0
        firstColorSlider.maximumValue = 100
    }
    
    private func setupSecondColorData () {
        secondColorData.text = String(secondColorSlider.value)
    }
    
    private func setupSecondColorSlider () {
        secondColorSlider.value = 0
        secondColorSlider.minimumValue = 0
        secondColorSlider.maximumValue = 100
    }
    
    private func setupThirdColorData () {
        thirdColorData.text = String(thirdColorSlider.value)
    }
    
    private func setupThirdColorSlider () {
        thirdColorSlider.value = 0
        thirdColorSlider.minimumValue = 0
        thirdColorSlider.maximumValue = 100
    }
    
    private func changeColor () {
        screen.backgroundColor = UIColor(red: CGFloat(firstColorSlider.value)/100, green: CGFloat(secondColorSlider.value)/100, blue: CGFloat(thirdColorSlider.value)/100, alpha: 1)
    }
}


