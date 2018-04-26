//
//  ViewController.swift
//  TicTacToe
//
//  Created by Mousty on 27/4/18.
//  Copyright © 2018 Mousty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var whichPlayer = 1
    
    @IBAction func placeImage(_ sender: AnyObject) {
        
        if (whichPlayer == 1)
        {
            sender.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            whichPlayer = 2
        }
        else
        {
            sender.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            whichPlayer = 1
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

