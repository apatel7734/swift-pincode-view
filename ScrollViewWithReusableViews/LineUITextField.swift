//
//  LineUITextField.swift
//  ScrollViewWithReusableViews
//
//  Created by Ashish Patel on 8/6/15.
//  Copyright (c) 2015 Ashish Patel. All rights reserved.
//

import UIKit

class LineUITextField: UITextField{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        
    }
    
    override func awakeFromNib() {
        setup()
    }
    
    func setup(){
        //textfield style for only bottome line
        self.borderStyle = UITextBorderStyle.None
        var bottomBorder = CALayer()
        bottomBorder.frame = CGRectMake(0.0, self.frame.height - 1, self.frame.width, 1.0)
        bottomBorder.backgroundColor = UIColor.blackColor().CGColor
        self.layer.addSublayer(bottomBorder)
        //numberpad
        self.keyboardType = UIKeyboardType.NumberPad
        
        //secure text entry
        self.secureTextEntry = true
        
        //font increase
        self.font = UIFont(name: "ArialMT", size: 30)

        //text alignment
        self.textAlignment = NSTextAlignment.Center
    }
    
    //hide textfield cursor
    override func caretRectForPosition(position: UITextPosition!) -> CGRect {
        return CGRectZero
    }
    
}
