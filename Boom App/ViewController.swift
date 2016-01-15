//
//  ViewController.swift
//  Boom App
//
//  Created by Mahmoud Mhanna on 1/14/16.
//  Copyright © 2016 UAETechMarket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgBlueBomb: UIImageView!
    @IBOutlet weak var imgRedBomb: UIImageView!
    @IBOutlet weak var btnHideBlueBomb: UIButton!
    @IBOutlet weak var btnHideRedBomb: UIButton!
    @IBOutlet weak var btnShowAllBombs: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnShowAllBombs.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hideBlueBomb(sender: AnyObject) {
        imgBlueBomb.hidden = true
        
        if(imgBlueBomb.hidden && imgRedBomb.hidden){
            btnShowAllBombs.hidden = false
        }
    }
    
    @IBAction func hideRedBomb(sender: AnyObject) {
        imgRedBomb.hidden = true
        
        if(imgBlueBomb.hidden && imgRedBomb.hidden){
            btnShowAllBombs.hidden = false
        }
    }
    
    
    @IBAction func showAllBombs(sender: AnyObject) {
        imgBlueBomb.hidden = false
        imgRedBomb.hidden = false
        btnShowAllBombs.hidden = true
    }
}

