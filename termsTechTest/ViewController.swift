//
//  ViewController.swift
//  termsTechTest
//
//  Created by Oliver Mahoney on 11/08/2018.
//  Copyright © 2018 Oliver Mahoney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let missingNumbers = APManager.findTheMissing([15, 9, 7, 5])

        print("Missing Numbers: \(missingNumbers?.description ?? "Error")")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

