//
//  ElevationTokens.swift
//
//
//  Created by Victor Pereira de Paula on 31/05/24.
//

public protocol ElevationTokens {
    var none: CGFloat { get }
    var border: BorderTokens { get }
    var elevated: CGFloat { get }
}

public protocol BorderTokens {
    var color: Color { get }
    var height: CGFloat { get }
}
