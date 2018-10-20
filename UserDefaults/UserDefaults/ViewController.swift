//
//  ViewController.swift
//  UserDefaults
//
//  Created by David E Bratton on 10/20/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fatherText: UITextField!
    @IBOutlet weak var wifeText: UITextField!
    @IBOutlet weak var sonText: UITextField!
    @IBOutlet weak var daughterText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let father = UserDefaults.standard.string(forKey: "Father") {
            fatherText.text = "\(father)"
        }
        if let mother = UserDefaults.standard.string(forKey: "Mother") {
            wifeText.text = "\(mother)"
        }
        if let son = UserDefaults.standard.string(forKey: "Son") {
            sonText.text = "\(son)"
        }
        if let daughter = UserDefaults.standard.string(forKey: "Daughter") {
            daughterText.text = "\(daughter)"
        }
        if let arrayObject = UserDefaults.standard.object(forKey: "Array") {
            print(arrayObject)
        }
    }

    @IBAction func addBtnPressed(_ sender: Any) {
        if let father = fatherText.text {
            UserDefaults.standard.set("\(father)", forKey: "Father")
        }
        if let mother = wifeText.text {
            UserDefaults.standard.set("\(mother)", forKey: "Mother")
        }
        if let son = sonText.text {
            UserDefaults.standard.set("\(son)", forKey: "Son")
        }
        if let daughter = daughterText.text {
            UserDefaults.standard.set("\(daughter)", forKey: "Daughter")
        }
        
        //let arr = [1, 2, 3, 4]
        //UserDefaults.standard.set(arr, forKey: "Array")
    }
}

