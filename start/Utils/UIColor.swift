//
//  UIColor.swift
//  start
//
//  Created by Tommy Jepsen on 04/07/2018.
//  Copyright © 2018 nordie. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func rgbConvert(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
