//
//  UITextField+Extension.swift
//  ZBCool
//
//  Created by ericyang on 11/24/15.
//  Copyright © 2015 i-chou. All rights reserved.
//

import Foundation

import UIKit


extension UITextField{
    
    
    convenience init(
        frame_:CGRect = CGRectZero,
        font:UIFont? = nil,
        placeholder:String? = nil,
        placeholderColor:UIColor? = nil,
        placeholderFont:UIFont? = nil,
        delegate:UITextFieldDelegate? = nil,
        textColor:UIColor? = nil,
        keyboardType:UIKeyboardType = .Default
        ){
            self.init(frame:frame_)
            if (font != nil){
                self.font=font
            }
            
            if !placeholder.isNilOrEmpty{
                self.placeholder=placeholder
            }
            if (placeholderColor != nil
                || placeholderFont != nil){
                    
                    var attributes = [String:AnyObject]()
                    if (placeholderColor != nil){
                        attributes[NSForegroundColorAttributeName]=placeholderColor
                    }
                    if (placeholderFont != nil){
                        attributes[NSFontAttributeName]=placeholderFont
                    }
                    let attributedPlaceholder = NSAttributedString(string: placeholder ?? "", attributes: attributes)
                    self.attributedPlaceholder=attributedPlaceholder
            }
           
            
            if (delegate != nil){
                self.delegate=delegate
            }
            if (textColor != nil){
                self.textColor=textColor
            }
            self.keyboardType = .Default
    }
}