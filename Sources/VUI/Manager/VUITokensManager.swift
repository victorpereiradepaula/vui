//
//  VUITokensManager.swift
//
//
//  Created by Victor Pereira de Paula on 25/05/24.
//

public class VUITokensManager {
    var lightColorTokens: ColorTokens = DefaultColorTokens()
    var darkColorTokens: ColorTokens = DefaultColorTokens()
    var spacingTokens: SpacingTokens = DefaultSpacingTokens()
    var cornerRadiusTokens: CornerRadiusTokens = DefaultCornerRadiusTokens()
    
    public static var shared = VUITokensManager()
    
    private init() {}
    
    public func configure(colorTokens: ColorTokens, darkColorTokens: ColorTokens? = nil, spacingTokens: SpacingTokens? = nil, cornerRadiusTokens: CornerRadiusTokens? = nil) {
        self.lightColorTokens = colorTokens
        self.darkColorTokens = darkColorTokens ?? colorTokens
        if let spacingTokens { self.spacingTokens = spacingTokens }
        if let cornerRadiusTokens { self.cornerRadiusTokens = cornerRadiusTokens }
    }
}
