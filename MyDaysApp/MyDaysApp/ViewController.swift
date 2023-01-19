//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Tikhon Bazar on 16.01.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var infoLabel: UILabel!
    private var numberOfDays = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
}

