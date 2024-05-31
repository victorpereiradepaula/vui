//
//  VUITokensManager.swift
//
//
//  Created by Victor Pereira de Paula on 25/05/24.
//

public class VUITokensManager {
    var lightColorTokens: ColorTokens = DefaultColorTokens()
    var darkColorTokens: ColorTokens = DefaultColorTokens()
    
    public static var shared = VUITokensManager()
    
    private init() {}
    
    public func configure(shapeTokens: ShapeTokens? = nil, lightColorTokens: ColorTokens, darkColorTokens: ColorTokens? = nil) {
        self.lightColorTokens = lightColorTokens
        self.darkColorTokens = darkColorTokens ?? lightColorTokens
    }
}
