//
//  BorderExtension.swift
//
//
//  Created by Victor Pereira de Paula on 16/06/24.
//

fileprivate var borderTokens: VUIBorderTokens {
    VUITokensManager.shared.borderTokens
}

public extension CGFloat {
    static var borderWidth: CGFloat { borderTokens.borderWidth }
    static var shadowRadius: CGFloat { borderTokens.shadowRadius }
}
