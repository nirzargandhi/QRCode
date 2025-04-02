//
//  Constants.swift
//  QRCode
//
//  Created by Nirzar Gandhi on 05/03/25.
//

import Foundation
import UIKit

let APPDELEOBJ              = UIApplication.shared.delegate as! AppDelegate
let NC                      = NotificationCenter.default

let BASEWIDTH               = 375.0
let SCREENSIZE: CGRect      = UIScreen.main.bounds
let SCREENWIDTH             = UIScreen.main.bounds.width
let SCREENHEIGHT            = UIScreen.main.bounds.height
let STATUSBARHEIGHT         = APPDELEOBJ.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0.0
var NAVBARHEIGHT            = 44.0


struct Constants {
    
    struct Storyboard {
        static let Main = "Main"
    }
}
