//
//  Utils.swift
//  SimpleDesktops
//
//  Created by Jiaxin Shou on 2020/1/27.
//  Copyright © 2020 Jiaxin Shou. All rights reserved.
//

import Cocoa

class Utils {
    static func currentAppearance() -> NSAppearance? {
        if let interfaceStyle = UserDefaults.standard.value(forKey: "AppleInterfaceStyle") as? String, interfaceStyle == "Dark" {
            return NSAppearance(named: .darkAqua)
        }

        return NSAppearance(named: .aqua)
    }

    static func showCriticalAlert(withInformation information: String) {
        NSApp.activate(ignoringOtherApps: true)

        let alert = NSAlert()
        alert.addButton(withTitle: NSLocalizedString("Cancel", comment: ""))
        alert.alertStyle = NSAlert.Style.critical
        alert.informativeText = information
        alert.messageText = NSLocalizedString("Error", comment: "")
        alert.runModal()
    }
}
