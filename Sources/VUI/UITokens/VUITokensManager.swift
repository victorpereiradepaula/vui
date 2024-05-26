//
//  VUITokensManager.swift
//
//
//  Created by Victor Pereira de Paula on 25/05/24.
//

import Foundation

open class VUITokensManager {
    private var lightColorTokens: ColorTokens = DefaultColorTokens()
    private var darkColorTokens: ColorTokens = DefaultColorTokens()
    
    public static var shared = VUITokensManager()
    
    private init() {}
    
    var colorTokens: ColorTokens {
        UITraitCollection.current.userInterfaceStyle == .dark ? darkColorTokens : lightColorTokens
    }
    
    public func configure(_ lightColorTokens: ColorTokens, _ darkColorTokens: ColorTokens? = nil) {
        self.lightColorTokens = lightColorTokens
        self.darkColorTokens = darkColorTokens ?? lightColorTokens
    }
}
