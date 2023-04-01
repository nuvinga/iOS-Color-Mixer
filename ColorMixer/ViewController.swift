//
//  ViewController.swift
//  ColorMixer
//
//  Created by Nuvin Godakanda Arachchi on 2023-02-03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // there are 2 ways to define variables
    // let is for constants
    // var is for variables
    var red: Float = 0.0
    var green: Float = 0.0
    var blue: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        red = redSlider.value
        green = greenSlider.value
        blue = blueSlider.value
        updateViewColor()
        redSlider.tintColor = UIColor(red: CGFloat(red/255), green: CGFloat(0.00/255), blue: CGFloat(0.00/255), alpha: 1)
        greenSlider.tintColor = UIColor(red: CGFloat(0.00/255), green: CGFloat(green/255), blue: CGFloat(0.00/255), alpha: 1)
        blueSlider.tintColor = UIColor(red: CGFloat(0.00/255), green: CGFloat(0.00/255), blue: CGFloat(blue/255), alpha: 1)

    }

    @IBAction func didChangeRedSlider(_ sender: UISlider) {
        red = sender.value
        updateViewColor()
        let color = UIColor(red: CGFloat(red/255), green: CGFloat(0.00/255), blue: CGFloat(0.00/255), alpha: 1)
        redSlider.tintColor = color
    }
    
    @IBAction func didChangeGreenSlider(_ sender: UISlider) {
        green = sender.value
        updateViewColor()
        let color = UIColor(red: CGFloat(0.00/255), green: CGFloat(green/255), blue: CGFloat(0.00/255), alpha: 1)
        greenSlider.tintColor = color
    }
    
    @IBAction func didChangeBlueSlider(_ sender: UISlider) {
        blue = sender.value
        updateViewColor()
        let color = UIColor(red: CGFloat(0.00/255), green: CGFloat(0.00/255), blue: CGFloat(blue/255), alpha: 1)
        blueSlider.tintColor = color
    }
    
    func updateViewColor() {
        let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
        colorView.backgroundColor = color
    }
    
}

