//
//  UIColorExtention.swift
//  DarkModeSample
//
//  Created by Yamada Masaaki on 2019/12/22.
//  Copyright © 2019 Yamada Masaaki. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    /// 背景色
    public static var background: UIColor {
        return dynamicColor(
            light: .white,
            dark: .black
        )
    }

    /// メインのテキストの色
    public static var text: UIColor {
        return dynamicColor(
            light: .white,
            dark: .black
        )
    }
    
    public class func dynamicColor(light: UIColor, dark: UIColor) -> UIColor {
        #if swift(>=5.1)
        if #available(iOS 13, *) {
            return UIColor { (traitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .dark {
                    return dark
                } else {
                    return light
                }
            }
        }
        #endif
        return light
    }
}
