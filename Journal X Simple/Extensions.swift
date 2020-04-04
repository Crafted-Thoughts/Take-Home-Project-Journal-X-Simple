//
//  Extensions.swift
//  Journal X Simple
//
//  Created by Amogh Joshi on 2/1/20.
//  Copyright © 2020 Amogh Joshi. All rights reserved.
//

//collection of some useful extensions
import UIKit

extension String {
    func hexStringToUIColor () -> UIColor {
        let cString:String = self.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if (cString.count != 6){
            return UIColor.gray
        }else{
            var rgbValue:UInt64 = 0
            Scanner(string: cString).scanHexInt64(&rgbValue)
            return UIColor( red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0, green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0, blue: CGFloat(rgbValue & 0x0000FF) / 255.0, alpha: CGFloat(1.0))
        }
    }
}
