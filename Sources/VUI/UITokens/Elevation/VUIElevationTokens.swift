//
//  VUIElevationTokens.swift
//
//
//  Created by Victor Pereira de Paula on 31/05/24.
//

public protocol VUIElevationTokens {
    var none: CGFloat { get }
    var border: VUIBorderTokens { get }
    var elevated: CGFloat { get }
}

public protocol VUIBorderTokens {
    var color: Color { get }
    var height: CGFloat { get }
}
