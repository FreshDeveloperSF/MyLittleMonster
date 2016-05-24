//
//  ViewController.swift
//  mylittlemonster
//
//  Created by Jason Leung on 5/23/16.
//  Copyright © 2016 Jason Leung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: MonsterImg!
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodImg.dropTarget = monsterImg
        heartImg.dropTarget = monsterImg
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
        
    }
    
    func itemDroppedOnCharacter(notif: AnyObject) {
        print("ITEM DROPPED ON CHARACTER")
    }


}

