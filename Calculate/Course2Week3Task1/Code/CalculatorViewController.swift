//
//  CalculatorViewController.swift
//  Course2Week3Task1
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var resultLeble: UILabel!
    
    @IBOutlet weak var firstOperandLable: UILabel!
    
    @IBOutlet weak var firstIntegerLable: UILabel!
    
    @IBOutlet weak var secondOperandLable: UILabel!
    
    @IBOutlet weak var secondIntegerLable: UILabel!
    
    @IBOutlet weak var plusMinusOutlet: UIStepper!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBOutlet weak var calculateOutlet: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //настраиваем интерфейс согласно ТЗ
        self.view.backgroundColor = #colorLiteral(red: 0.1764705882, green: 0.1843137255, blue: 0.1921568627, alpha: 1)
        self.resultLeble.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
        self.plusMinusOutlet.tintColor = #colorLiteral(red: 0.9254901961, green: 0.4431372549, blue: 0.2862745098, alpha: 1)
        self.sliderOutlet.tintColor = #colorLiteral(red: 0.9254901961, green: 0.4431372549, blue: 0.2862745098, alpha: 1)
        self.calculateOutlet.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.4431372549, blue: 0.2862745098, alpha: 1)
        //настраиваем цвет остального текста
        self.firstOperandLable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.firstIntegerLable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.secondOperandLable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.secondIntegerLable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.calculateOutlet.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //настраиваем степпер
        self.plusMinusOutlet.minimumValue = 1.0
        self.plusMinusOutlet.maximumValue = 10.0
        self.plusMinusOutlet.stepValue = 0.5
        //настраиваем слайдер
        self.sliderOutlet.minimumValue = 0
        self.sliderOutlet.maximumValue = 100
        
    }
    
    @IBAction func plusMinusButton(_ sender: Any) {
        firstIntegerLable.text = String(self.plusMinusOutlet.value)
    }
    
    @IBAction func sliderButton(_ sender: Any) {
        secondIntegerLable.text = String(self.sliderOutlet.value)
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        guard let first = Double(firstIntegerLable.text ?? "") else { return }
        guard let second = Double(secondIntegerLable.text ?? "") else { return }
        let result = first * second
        self.resultLeble.text = String(result)
    }
    
    
    
}
