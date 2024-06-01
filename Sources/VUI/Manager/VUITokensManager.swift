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
    
    public static var shared = VUITokensManager()
    
    private init() {}
    
    public func configure(colorTokens: ColorTokens, darkColorTokens: ColorTokens? = nil, spacingTokens: SpacingTokens? = nil, shapeTokens: ShapeTokens? = nil) {
        self.lightColorTokens = colorTokens
        self.darkColorTokens = darkColorTokens ?? colorTokens
    }
}
