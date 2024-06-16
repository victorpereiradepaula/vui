//
//  VUITokensManager.swift
//
//
//  Created by Victor Pereira de Paula on 25/05/24.
//

public class VUITokensManager {
    var lightColorTokens: VUIColorTokens = DefaultColorTokens()
    var darkColorTokens: VUIColorTokens = DefaultColorTokens()
    var spacingTokens: VUISpacingTokens = DefaultSpacingTokens()
    var cornerRadiusTokens: VUICornerRadiusTokens = DefaultCornerRadiusTokens()
    
    public static var shared = VUITokensManager()
    
    private init() {}
    
    public func configure(colorTokens: VUIColorTokens, darkColorTokens: VUIColorTokens? = nil, spacingTokens: VUISpacingTokens? = nil, cornerRadiusTokens: VUICornerRadiusTokens? = nil) {
        self.lightColorTokens = colorTokens
        self.darkColorTokens = darkColorTokens ?? colorTokens
        if let spacingTokens { self.spacingTokens = spacingTokens }
        if let cornerRadiusTokens { self.cornerRadiusTokens = cornerRadiusTokens }
    }
}
