//
//  ViewController.swift
//  ScrollViewWithReusableViews
//
//  Created by Ashish Patel on 8/6/15.
//  Copyright (c) 2015 Ashish Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let height = self.view.frame.height
        let width = self.view.frame.width
        var realWidth = width
        var realHeight = height
        if(width > height){
            realWidth = height
            realHeight = width
        }
        
        var pinUiView = PinUIView(frame: CGRect(x: 0, y: 0, width: realWidth, height: realHeight))
        self.view.addSubview(pinUiView)
    }
    
}

