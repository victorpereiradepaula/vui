//
//  UIUserInterfaceStyle.swift
//
//
//  Created by Victor Pereira de Paula on 31/05/24.
//

fileprivate let userInterfaceStyleKey = "VUIUserInterfaceStyleKey"

extension VUITokensManager {
    public var userInterfaceStyle: UIUserInterfaceStyle {
        let savedUserInterfaceStyle = UserDefaults.standard.integer(forKey: userInterfaceStyleKey)
        return UIUserInterfaceStyle(rawValue: savedUserInterfaceStyle) ?? .unspecified
    }
    
    var colorTokens: VUIColorTokens {
        switch userInterfaceStyle {
        case .dark: return darkColorTokens
        case .light: return lightColorTokens
        default:
            return UITraitCollection.current.userInterfaceStyle == .dark ? darkColorTokens : lightColorTokens
        }
    }
    
    public func setUserInterfaceStyle(_ userInterfaceStyle: UIUserInterfaceStyle) {
        UserDefaults.standard.setValue(userInterfaceStyle.rawValue, forKey: userInterfaceStyleKey)
        UIApplication.shared.windows.forEach { window in
            window.overrideUserInterfaceStyle = userInterfaceStyle
        }
    }
}
