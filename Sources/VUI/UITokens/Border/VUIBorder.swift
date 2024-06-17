//
//  VUIBorder.swift
//
//
//  Created by Victor Pereira de Paula on 16/06/24.
//

var borderTokens: VUIBorderTokens {
    VUITokensManager.shared.borderTokens
}

public struct VUIBorder {
    var color: Color
    var hasBorder: Bool
    
    public var borderWidth: CGFloat {
        hasBorder ? borderTokens.borderWidth : .zero
    }
    
    public init(color: Color, hasBorder: Bool) {
        self.color = color
        self.hasBorder = hasBorder
    }
}
