//
//  ViewController.swift
//  TicTacToe
//
//  Created by Mousty on 27/4/18.
//  Copyright © 2018 Mousty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var whichPlayer = 1  //variable to store each player or computer turn
    
    var whichState = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winState = [[0, 1, 2, 3], [4, 5, 6, 7], [8, 9, 10, 11], [12, 13, 14, 15], [0, 4, 8, 12], [1, 5, 9, 13], [2, 6, 10, 14], [3, 7, 11, 15], [0, 5, 10, 15], [3, 6, 9, 12]]
    
    var IsActive = true
    
    @IBAction func placeImage(_ sender: AnyObject) {
        
        if (whichState[sender.tag-1] == 0 && IsActive == true)
        {
           whichState[sender.tag-1] = whichPlayer
        
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

