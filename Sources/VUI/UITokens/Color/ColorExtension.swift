//
//  ColorExtension.swift
//  
//
//  Created by Victor Pereira de Paula on 25/05/24.
//

fileprivate var colorTokens: ColorTokens {
    VUITokensManager.shared.colorTokens
}

public extension Color {
    static var primary: Color { .init(UIColor { _ in .init(colorTokens.primary) }) }
    static var onPrimary: Color { .init(UIColor { _ in .init(colorTokens.onPrimary) }) }
    static var primaryContainer: Color { .init(UIColor { _ in .init(colorTokens.primaryContainer) }) }
    static var onPrimaryContainer: Color { .init(UIColor { _ in .init(colorTokens.onPrimaryContainer) }) }
    
    static var secondary: Color { .init(UIColor { _ in .init(colorTokens.secondary) }) }
    static var onSecondary: Color { .init(UIColor { _ in .init(colorTokens.onSecondary) }) }
    static var secondaryContainer: Color { .init(UIColor { _ in .init(colorTokens.secondaryContainer) }) }
    static var onSecondaryContainer: Color { .init(UIColor { _ in .init(colorTokens.onSecondaryContainer) }) }
    
    static var tertiary: Color { .init(UIColor { _ in .init(colorTokens.tertiary) }) }
    static var onTertiary: Color { .init(UIColor { _ in .init(colorTokens.onTertiary) }) }
    static var tertiaryContainer: Color { .init(UIColor { _ in .init(colorTokens.tertiaryContainer) }) }
    static var onTertiaryContainer: Color { .init(UIColor { _ in .init(colorTokens.onTertiaryContainer) }) }
    
    static var error: Color { .init(UIColor { _ in .init(colorTokens.error) }) }
    static var onError: Color { .init(UIColor { _ in .init(colorTokens.onError) }) }
    static var errorContainer: Color { .init(UIColor { _ in .init(colorTokens.errorContainer) }) }
    static var onErrorContainer: Color { .init(UIColor { _ in .init(colorTokens.onErrorContainer) }) }
    
    static var warning: Color { .init(UIColor { _ in .init(colorTokens.warning) }) }
    static var onWarning: Color { .init(UIColor { _ in .init(colorTokens.onWarning) }) }
    static var warningContainer: Color { .init(UIColor { _ in .init(colorTokens.warningContainer) }) }
    static var onWarningContainer: Color { .init(UIColor { _ in .init(colorTokens.onWarningContainer) }) }
    
    static var success: Color { .init(UIColor { _ in .init(colorTokens.success) }) }
    static var onSuccess: Color { .init(UIColor { _ in .init(colorTokens.onSuccess) }) }
    static var successContainer: Color { .init(UIColor { _ in .init(colorTokens.successContainer) }) }
    static var onSuccessContainer: Color { .init(UIColor { _ in .init(colorTokens.onSuccessContainer) }) }
    
    static var surfaceDim: Color { .init(UIColor { _ in .init(colorTokens.surfaceDim) }) }
    static var surface: Color { .init(UIColor { _ in .init(colorTokens.surface) }) }
    static var surfaceBright: Color { .init(UIColor { _ in .init(colorTokens.surfaceBright) }) }
    static var surfaceContainerLowest: Color { .init(UIColor { _ in .init(colorTokens.surfaceContainerLowest) }) }
    static var surfaceContainerLow: Color { .init(UIColor { _ in .init(colorTokens.surfaceContainerLow) }) }
    static var surfaceContainer: Color { .init(UIColor { _ in .init(colorTokens.surfaceContainer) }) }
    static var surfaceContainerHigh: Color { .init(UIColor { _ in .init(colorTokens.surfaceContainerHigh) }) }
    static var surfaceContainerHighest: Color { .init(UIColor { _ in .init(colorTokens.surfaceContainerHighest) }) }
    static var onSurface: Color { .init(UIColor { _ in .init(colorTokens.onSurface) }) }
    static var onSurfaceVariant: Color { .init(UIColor { _ in .init(colorTokens.onSurfaceVariant) }) }
    
    static var inverseSurface: Color { .init(UIColor { _ in .init(colorTokens.inverseSurface) }) }
    static var inverseOnSurface: Color { .init(UIColor { _ in .init(colorTokens.inverseOnSurface) }) }
    static var inversePrimary: Color { .init(UIColor { _ in .init(colorTokens.inversePrimary) }) }
    
    static var outline: Color { .init(UIColor { _ in .init(colorTokens.outline) }) }
    static var outlineVariant: Color { .init(UIColor { _ in .init(colorTokens.outlineVariant) }) }
    
    static var scrim: Color { .init(UIColor { _ in .init(colorTokens.scrim) }) }
    
    static var shadow: Color { .init(UIColor { _ in .init(colorTokens.shadow) }) }
}
