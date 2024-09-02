//
//  ViewController.swift
//  HW sprint 3
//
//  Created by Aleksandr Pashin on 03.09.2024.
//

import UIKit

class CounterViewController: UIViewController, ViewInput {
    
    var output: VIewOutput!
    
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var counter: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output = Presenter.init(view: self)
        output.viewIsReady()
        
    }
    
    @IBAction func addOne(_ sender: UIButton) {
        counter += 1
        resultLable.text = counter.description
    }
    
    @IBAction func removeOne(_ sender: UIButton) {
        counter -= 1
        resultLable.text = counter.description
    }
    
    @IBAction func removeAll(_ sender: Any) {
        counter = 0
        resultLable.text = counter.description
    }

    func setupInitialState () {
        resultLable.text = "0"
        plusButton.titleLabel?.text = "+"
        plusButton.backgroundColor = UIColor.red
        minusButton.titleLabel?.text = "-"
        minusButton.backgroundColor = UIColor.blue
    }

}

