//
//  ViewController.swift
//  CustomScoreboard
//
//  Created by Tucker on 4/21/15.
//  Copyright (c) 2015 TuckerSamEmily. All rights reserved.
//

import UIKit


class ViewController: UIViewController
{
    var numberOfPlayers = ["1", "2", "3", "4"]
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numberOfPlayers.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return numberOfPlayers[row]
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }


}

