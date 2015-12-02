//
//  UILabel+Extension.swift
//  ZBCool
//
//  Created by ericyang on 11/24/15.
//  Copyright © 2015 i-chou. All rights reserved.
//

import UIKit


extension UILabel{
    
    
    convenience init(
        frame_:CGRect = CGRectZero,
        text:String? = nil,
        font:UIFont? = nil,
        textColor:UIColor? = nil,
        backgroundColor:UIColor = UIColor.clearColor(),
        textAlignment:NSTextAlignment = .Left,
        userInteractionEnabled:Bool = false
        ){
            self.init(frame:frame_)
            if !text.isNilOrEmpty{
                self.text=text
            }
            if (textColor != nil){
                self.textColor=textColor
            }
            self.backgroundColor=backgroundColor
            if (font != nil){
                self.font=font
            }
            self.textAlignment=textAlignment
            self.userInteractionEnabled=userInteractionEnabled
    }
    
    
}

