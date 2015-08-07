//
//  PinUIView.swift
//  ScrollViewWithReusableViews
//
//  Created by Ashish Patel on 8/6/15.
//  Copyright (c) 2015 Ashish Patel. All rights reserved.
//

import UIKit

/**

Step 1. Create Nib file and Custom UI file
Step 2. override init() frame and decoder.
Step 3. create setup method with UINib loading.
Step 5. create Outlets

*/

class PinUIView: UIView, UITextFieldDelegate{
    
    @IBOutlet weak var pinChar1: UITextField!
    @IBOutlet weak var pinChar2: UITextField!
    @IBOutlet weak var pinChar3: UITextField!
    @IBOutlet weak var pinChar4: UITextField!
    
    @IBOutlet var contentView: PinUIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup() {
        var nib = UINib(nibName: "PinUIView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        
        pinChar1.delegate = self
        pinChar2.delegate = self
        pinChar3.delegate = self
        pinChar4.delegate = self
        contentView.frame = bounds
        
        pinChar1.becomeFirstResponder()
        
        addSubview(contentView)
    }
    
    func textFieldDidChange(textField: UITextField){
        var nextResponder = textField.superview?.viewWithTag(textField.tag+1)
        if let nextRes = nextResponder{
            nextRes.becomeFirstResponder()
        }else{
            println("Entered Pin = ")
            textField.resignFirstResponder()
        }
        
    }
    
    var pinCode: String!
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        textField.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        return true
    }
    
}
