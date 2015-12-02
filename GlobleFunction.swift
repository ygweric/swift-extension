//
//  Globle.swift
//  ZBCool
//
//  Created by ericyang on 11/20/15.
//  Copyright © 2015 i-chou. All rights reserved.
//

import Foundation
import QorumLogs


//MARK: - Variable
@objc class GlobleFunction:NSObject{
    override class func initialize() {
        var token: dispatch_once_t = 0
        dispatch_once(&token) { () -> Void in
            QorumLogs.enabled=true
            QorumLogs.test()
            QorumLogs.minimumLogLevelShown = 1
            QorumOnlineLogs.minimumLogLevelShown = 4 // Its a good idea to have OnlineLog level a bit higher
            QL1("mylog") // Doesn't show this level anywhere, because minimum level is 2
            QL2("mylog")  // Shows this only in debugger
            QL3("mylog") // Shows this only in debugger
            QL4("mylog") // Shows this in debugger and online logs
        }
    }
}


//MKARK: swift globle

var isdebug:Bool { return true}

//MARK: - log

func logLine(file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL2("logLine",file,function,line)
}

func logOverride(file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL2("Override ME !!!!!!!",file,function,line)
}

func logTodo(file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL2("TODO !!!!!!!!",file,function,line)
}
func logTodo(any:Any!,_ file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL2("TODO %@ !!!!!!!!\(any)",file,function,line)
}
func logTime(file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL2("Time : ",file,function,line)
}
//MARK: -

func logDebug(any:Any!,_ file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL1(any,file,function,line)
}

func logInfo(any:String!,_ file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL2("Info \(any)",file,function,line)
}
func logInfoAny(any:Any?,_ file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL2("Info \(any)",file,function,line)
}

func logWarning(any:Any!,_ file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL3("Warning \(any)",file,function,line)
}

func logError(any:Any? = nil,_ file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL4("Error \(any)",file,function,line)
}

func logDeleteLater(file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL2("Delete Later !!!",file,function,line)
}

func logDeleteLater(any:Any!,_ file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__){
    QL4("Delete Later \(any)",file,function,line)
}



//MARK: - func

func HSFONT(size:CGFloat) -> UIFont{
    return UIFont.systemFontOfSize(size)
}


func ccr(x:CGFloat, _ y:CGFloat, _ width:CGFloat, _ height:CGFloat) ->CGRect{
    return CGRectMake(x, y, width, height)
}


var SCREEN_SCALE:CGFloat { return UIScreen.mainScreen().bounds.size.width/320}
var SCREEN_WIDTH:CGFloat { return UIScreen.mainScreen().bounds.size.width}
var SCREEN_HEIGHT:CGFloat { return UIScreen.mainScreen().bounds.size.height}

var STATUS_BAR_HEIGHT:CGFloat { return 20}
var NAV_BAR_HEIGHT:CGFloat { return 44}
var NAV_BAR_HEIGHT_IOS7:CGFloat { return 64}
var NAV_BAR_HEIGHT_PLUS:CGFloat { return 93}
var TOOL_BAR_HEIGHT:CGFloat { return 44}
var TAB_BAR_HEIGHT:CGFloat { return 49}

var KEY_WINDOW:UIWindow {return UIApplication.sharedApplication().keyWindow!}


func COLORRGB(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

func COLORRGBA(rgbValue: UInt, _ alphaValue: Float) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(alphaValue)
    )
}


func LocalStr(key:String) -> String{
    return NSLocalizedString(key, comment: key)
}



