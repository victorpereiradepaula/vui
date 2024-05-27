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
    static var primary: Color { colorTokens.primary }
    static var onPrimary: Color { colorTokens.onPrimary }
    static var primaryContainer: Color { colorTokens.primaryContainer }
    static var onPrimaryContainer: Color { colorTokens.onPrimaryContainer }
    
    static var secondary: Color { colorTokens.secondary }
    static var onSecondary: Color { colorTokens.onSecondary }
    static var secondaryContainer: Color { colorTokens.secondaryContainer }
    static var onSecondaryContainer: Color { colorTokens.onSecondaryContainer }
    
    static var tertiary: Color { colorTokens.tertiary }
    static var onTertiary: Color { colorTokens.onTertiary }
    static var tertiaryContainer: Color { colorTokens.tertiaryContainer }
    static var onTertiaryContainer: Color { colorTokens.onTertiaryContainer }
    
    static var error: Color { colorTokens.error }
    static var onError: Color { colorTokens.onError }
    static var errorContainer: Color { colorTokens.errorContainer }
    static var onErrorContainer: Color { colorTokens.onErrorContainer }
    
    static var warning: Color { colorTokens.warning }
    static var onWarning: Color { colorTokens.onWarning }
    static var warningContainer: Color { colorTokens.warningContainer }
    static var onWarningContainer: Color { colorTokens.onWarningContainer }
    
    static var success: Color { colorTokens.success }
    static var onSuccess: Color { colorTokens.onSuccess }
    static var successContainer: Color { colorTokens.successContainer }
    static var onSuccessContainer: Color { colorTokens.onSuccessContainer }
    
    static var surfaceDim: Color { colorTokens.surfaceDim }
    static var surface: Color { colorTokens.surface }
    static var surfaceBright: Color { colorTokens.surfaceBright }
    static var surfaceContainerLowest: Color { colorTokens.surfaceContainerLowest }
    static var surfaceContainerLow: Color { colorTokens.surfaceContainerLow }
    static var surfaceContainer: Color { colorTokens.surfaceContainer }
    static var surfaceContainerHigh: Color { colorTokens.surfaceContainerHigh }
    static var surfaceContainerHighest: Color { colorTokens.surfaceContainerHighest }
    static var onSurface: Color { colorTokens.onSurface }
    static var onSurfaceVariant: Color { colorTokens.onSurfaceVariant }
    
    static var inverseSurface: Color { colorTokens.inverseSurface }
    static var inverseOnSurface: Color { colorTokens.inverseOnSurface }
    static var inversePrimary: Color { colorTokens.inversePrimary }
    
    static var outline: Color { colorTokens.outline }
    static var outlineVariant: Color { colorTokens.outlineVariant }
    
    static var scrim: Color { colorTokens.scrim }
    
    static var shadow: Color { colorTokens.shadow }
}
