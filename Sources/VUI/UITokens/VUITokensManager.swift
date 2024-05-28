//
//  VUITokensManager.swift
//
//
//  Created by Victor Pereira de Paula on 25/05/24.
//

import Foundation

fileprivate let userInterfaceStyleKey = "VUIUserInterfaceStyleKey"

open class VUITokensManager {
    private var lightColorTokens: ColorTokens = DefaultColorTokens()
    private var darkColorTokens: ColorTokens = DefaultColorTokens()
    public private(set) var userInterfaceStyle: UIUserInterfaceStyle = .unspecified
    
    public static var shared = VUITokensManager()
    
    private init() {
        self.userInterfaceStyle = UIUserInterfaceStyle(rawValue: UserDefaults.standard.integer(forKey: userInterfaceStyleKey)) ?? .unspecified
    }
    
    var colorTokens: ColorTokens {
        switch userInterfaceStyle {
        case .dark:
            return darkColorTokens
        case .light:
            return lightColorTokens
        default:
            return UITraitCollection.current.userInterfaceStyle == .dark ? darkColorTokens : lightColorTokens
        }
    }
    
    public func configure(_ lightColorTokens: ColorTokens, _ darkColorTokens: ColorTokens? = nil) {
        self.lightColorTokens = lightColorTokens
        self.darkColorTokens = darkColorTokens ?? lightColorTokens
    }
    
    public func setUserInterfaceStyle(_ userInterfaceStyle: UIUserInterfaceStyle) {
        UserDefaults.standard.setValue(userInterfaceStyle.rawValue, forKey: userInterfaceStyleKey)
        self.userInterfaceStyle = userInterfaceStyle
        UIApplication.shared.windows.forEach { window in
            window.overrideUserInterfaceStyle = userInterfaceStyle
        }
    }
}
