//
//  ViewController.swift
//  CBPinEntryView
//
//  Created by Chris Byatt on 03/18/2017.
//  Copyright (c) 2017 Chris Byatt. All rights reserved.
//

import UIKit
import CBPinEntryView

class ViewController: UIViewController {

    @IBOutlet var pinEntryView: CBPinEntryView! {
        didSet {
            pinEntryView.delegate = self
        }
    }
    @IBOutlet var stringOutputLabel: UILabel!

    @IBAction func pressedButton(_ sender: UIButton) {
        stringOutputLabel.text = pinEntryView.getPinAsString()
        print(pinEntryView.getPinAsInt() ?? "Nothing entered")
    }
}

extension ViewController: CBPinEntryViewDelegate {
    func entryChanged(_ completed: Bool) {
        if completed {
            print(pinEntryView.getPinAsString())
        }
    }
}

