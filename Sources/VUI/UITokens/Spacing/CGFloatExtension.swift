//
//  File.swift
//  
//
//  Created by Victor Pereira de Paula on 31/05/24.
//

fileprivate var spacingTokens: VUISpacingTokens {
    VUITokensManager.shared.spacingTokens
}

public extension CGFloat {
    static var xSmall: CGFloat { spacingTokens.xSmall }
    static var small: CGFloat { spacingTokens.small }
    static var medium: CGFloat { spacingTokens.medium }
    static var large: CGFloat { spacingTokens.large }
    static var xLarge: CGFloat { spacingTokens.xLarge }
}
