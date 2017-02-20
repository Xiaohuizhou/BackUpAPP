//
//  Common.swift
//  BackUpAPP
//
//  Created by 周凯辉 on 2017/1/9.
//  Copyright © 2017年 周光辉. All rights reserved.
//

import UIKit
public let GRGBColor = UIColor(red: 233/255, green: 233/255, blue: 233/255, alpha: 1)

//获取系统版本
let IS_IOS7 = (UIDevice.current.systemVersion as NSString).doubleValue >= 7.0
let IS_IOS8 = (UIDevice.current.systemVersion as NSString).doubleValue >= 8.0

//获取屏幕 宽度、高度
let lSCREEN_WIDTH = UIScreen.main.bounds.width
let lSCREEN_HEIGHT = UIScreen.main.bounds.height


class Common: NSObject {

}
