//
//  String+Extension.swift
//  ZBCool
//
//  Created by ericyang on 11/23/15.
//  Copyright © 2015 i-chou. All rights reserved.
//

import CoreFoundation
import Foundation
import UIKit

extension String{
    func containsString(s:String) -> Bool
    {
        if(self.rangeOfString(s) != nil)
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func containsString(s:String, compareOption: NSStringCompareOptions) -> Bool
    {
        if((self.rangeOfString(s, options: compareOption)) != nil)
        {
            return true
        }
        else
        {
            return false
        }
    }
    
   
    
}


protocol OptionalString {}
extension String: OptionalString {}
extension NSString: OptionalString {}
extension Optional where Wrapped: OptionalString {
    var isNilOrEmpty: Bool {
        return ((self as? String) ?? "").isEmpty
    }
    var emptyIfNil: String {
        return (self as? String) ?? ""
    }
}


