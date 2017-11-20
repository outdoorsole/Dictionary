//
//  ViewController.swift
//  Dictionary
//
//  Created by Maribel Montejano on 11/20/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // Empty array to store words
    var words: [String] = ["apple", "egg", "grape", "sausage", "wine"]
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var wordImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: UIPickerViewDataSource methods
    // 1) returns the number of 'columns' to display.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // 2) returns the # of rows in each component.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    
    // MARK: UIPickerViewDelegate optional methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return words[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("didSelectRow \(row)")
        if words[row] == "apple" {
            wordImage.image = UIImage(named: "apple")
        } else if words[row] == "egg" {
            wordImage.image = UIImage(named: "egg")
        } else if words[row] == "grape" {
            wordImage.image = UIImage(named: "grape")
        } else if words[row] == "sausage" {
            wordImage.image = UIImage(named: "sausage")
        } else if words[row] == "wine" {
            wordImage.image = UIImage(named: "wine")
        } else {
            print("no word has been selected")
        }
    }

}

