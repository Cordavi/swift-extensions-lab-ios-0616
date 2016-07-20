//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   @IBOutlet weak var unicornLevelLabel: UILabel!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      var fullName = "Michael Travis Amundsen"
      var phoneNumber = 8675309
      
      unicornLevelLabel.text = fullName.unicornLevel
      
      print(fullName.whisper())
      print(fullName.shout())
      print(fullName.pigLatin)
      print(fullName.points)
      
      print(phoneNumber.half())
      print(phoneNumber.isDivisibleBy(2))
      print(phoneNumber.squared)
      print(phoneNumber.halved())
      
   }
}


