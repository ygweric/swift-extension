//
//  UIButton+Extension.swift
//  ZBCool
//
//  Created by ericyang on 11/24/15.
//  Copyright © 2015 i-chou. All rights reserved.
//

import UIKit


extension UIButton{

    
    convenience init(
        frame_:CGRect? = nil,
        imgName:String? = nil,
        hlImgName:String? = nil,
        disabledImageName:String? = nil,
        title:String? = nil,
        titleColor:UIColor? = nil,
        hlTitleColor:UIColor? = nil,
        disabledTitleColor:UIColor? = nil,
        font:UIFont? = nil,
        backgroundColor:UIColor? = nil,
        hlBackgroundColor:UIColor? = nil,
        titleEdgeInsets:UIEdgeInsets? = nil,
        contentHorizontalAlignment:UIControlContentHorizontalAlignment? = nil,
        block:((btn:UIControl)->Void)? = nil
        ){
            
            self.init(type: .Custom)
            if (frame_ != nil) {
                self.frame=frame_!
            }
            
            if !imgName.isNilOrEmpty {
                self.setBackgroundImage(UIImage(named: imgName!), forState: .Normal)
            }else if(backgroundColor != nil){
                self.setBackgroundImage(UIImage(color: backgroundColor!), forState: .Normal)
            }

            if !hlImgName.isNilOrEmpty {
                self.setBackgroundImage(UIImage(named: hlImgName!), forState: .Highlighted)
            }else if(hlBackgroundColor != nil){
                self.setBackgroundImage(UIImage(color: hlBackgroundColor!), forState: .Highlighted)
            }
            
            if !disabledImageName.isNilOrEmpty {
                self.setBackgroundImage(UIImage(named: disabledImageName!), forState: .Disabled)
            }
            
            if !title.isNilOrEmpty{
                self.setTitle(title, forState: .Normal)
            }
            if (titleColor != nil){
                self.setTitleColor(titleColor, forState: .Normal)
            }
            if (hlTitleColor != nil){
                self.setTitleColor(hlTitleColor, forState: .Selected)
            }
            if (disabledTitleColor != nil){
                self.setTitleColor(disabledTitleColor, forState: .Disabled)
            }
            if (font != nil){
                self.titleLabel?.font=font
            }
            if (titleEdgeInsets != nil){
                self.titleEdgeInsets=titleEdgeInsets!
            }
            if (contentHorizontalAlignment != nil){
                self.contentHorizontalAlignment=contentHorizontalAlignment!
            }
            if (block != nil){
                self.addControlEvent(.TouchUpInside, closure: block!)
            }
    }
    
    
}

