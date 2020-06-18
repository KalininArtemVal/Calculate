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
        self.plusMinusOutlet.layer.cornerRadius = 5
        self.plusMinusOutlet.tintColor = .none
        self.plusMinusOutlet.layer.borderWidth = 1
        self.plusMinusOutlet.layer.borderColor = #colorLiteral(red: 0.9254901961, green: 0.4431372549, blue: 0.2862745098, alpha: 1)
        self.plusMinusOutlet.layer.shadowColor = #colorLiteral(red: 0.9254901961, green: 0.4431372549, blue: 0.2862745098, alpha: 1)
        //настраиваем цвет кнопки calculate
        self.calculateOutlet.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.4431372549, blue: 0.2862745098, alpha: 1)
        //настраиваем цвет остального текста
        self.firstOperandLable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.firstIntegerLable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.secondOperandLable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.secondIntegerLable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.calculateOutlet.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //настраиваем степпер
        self.plusMinusOutlet.minimumValue = 0.0
        self.plusMinusOutlet.maximumValue = 10.0
        self.plusMinusOutlet.stepValue = 0.5
        //настраиваем слайдер
        self.sliderOutlet.minimumValue = 0
        self.sliderOutlet.maximumValue = 100
    }
    
    
    @IBAction func plusMinusButton(_ sender: Any) {
        firstIntegerLable.text = String(format: "%.4f", self.plusMinusOutlet.value)
    }
    
    @IBAction func sliderButton(_ sender: Any) {
        let y = round(self.sliderOutlet.value * 10000) / 10000
        secondIntegerLable.text = String(y)
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        guard let first = Double(firstIntegerLable.text ?? "") else { return }
        guard let second = Double(secondIntegerLable.text ?? "") else { return }
        let result = first * second
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            self.resultLeble.text = "\(Int(result))"
        } else {
            self.resultLeble.text = String(format: "%.4f", result)
        }
    }
    
    
    
}
