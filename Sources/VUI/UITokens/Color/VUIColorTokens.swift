//
//  VUIColorTokens.swift
//
//
//  Created by Victor Pereira de Paula on 25/05/24.
//

public protocol VUIColorTokens {
    var primary: Color { get }
    var onPrimary: Color { get }
    var primaryContainer: Color { get }
    var onPrimaryContainer: Color { get }
    
    var secondary: Color { get }
    var onSecondary: Color { get }
    var secondaryContainer: Color { get }
    var onSecondaryContainer: Color { get }
    
    var tertiary: Color { get }
    var onTertiary: Color { get }
    var tertiaryContainer: Color { get }
    var onTertiaryContainer: Color { get }
    
    var error: Color { get }
    var onError: Color { get }
    var errorContainer: Color { get }
    var onErrorContainer: Color { get }
    
    var warning: Color { get }
    var onWarning: Color { get }
    var warningContainer: Color { get }
    var onWarningContainer: Color { get }
    
    var success: Color { get }
    var onSuccess: Color { get }
    var successContainer: Color { get }
    var onSuccessContainer: Color { get }
    
    var surfaceDim: Color { get }
    var surface: Color { get }
    var surfaceBright: Color { get }
    var surfaceContainerLowest: Color { get }
    var surfaceContainerLow: Color { get }
    var surfaceContainer: Color { get }
    var surfaceContainerHigh: Color { get }
    var surfaceContainerHighest: Color { get }
    var onSurface: Color { get }
    var onSurfaceVariant: Color { get }
    
    var inverseSurface: Color { get }
    var inverseOnSurface: Color { get }
    var inversePrimary: Color { get }
    
    var outline: Color { get }
    var outlineVariant: Color { get }
    
    var scrim: Color { get }
    
    var shadow: Color { get }
}
