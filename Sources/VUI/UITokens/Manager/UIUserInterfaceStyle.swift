//
//  UIUserInterfaceStyle.swift
//
//
//  Created by Victor Pereira de Paula on 31/05/24.
//

fileprivate let userInterfaceStyleKey = "VUIUserInterfaceStyleKey"

extension VUITokensManager {
    public var userInterfaceStyle: UIUserInterfaceStyle {
        let savedUserInterfaceStyle = UserDefaults.standard.object(forKey: userInterfaceStyleKey) as? Int
        return UIUserInterfaceStyle(rawValue: savedUserInterfaceStyle ?? .zero) ?? .unspecified
    }
    
    var colorTokens: ColorTokens {
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
