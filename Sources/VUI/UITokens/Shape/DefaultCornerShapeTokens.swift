//
//  DefaultCornerRadiusTokens.swift
//
//
//  Created by Victor Pereira de Paula on 31/05/24.
//

struct DefaultCornerRadiusTokens: CornerRadiusTokens {}

public extension CornerRadiusTokens {
    var none: CGFloat { .zero }
    var xSmall: CGFloat { 2 }
    var small: CGFloat { 4 }
    var medium: CGFloat { 6 }
    var large: CGFloat { 8 }
    var xLarge: CGFloat { 12 }
    var full: CGFloat { .infinity }
}
