//
//  DefaultColorTokens.swift
//
//
//  Created by Victor Pereira de Paula on 25/05/24.
//

struct DefaultColorTokens: ColorTokens {}

public extension ColorTokens {
    var primary: Color { .init(red: 27/255, green: 26/255, blue: 82/255) }
    var onPrimary: Color { .white }
    var primaryContainer: Color { .init(red: 146/255, green: 144/255, blue: 191/255) }
    var onPrimaryContainer: Color { .init(red: 9/255, green: 15/255, blue: 41/255) }
    
    var secondary: Color { .init(red: 51/255, green: 105/255, blue: 132/255) }
    var onSecondary: Color { .white }
    var secondaryContainer: Color { .init(red: 127/255, green: 202/255, blue: 196/255) }
    var onSecondaryContainer: Color { .init(red: 21/255, green: 53/255, blue: 72/255) }
    
    var tertiary: Color { .init(red: 113/255, green: 84/255, blue: 245/255) }
    var onTertiary: Color { .white }
    var tertiaryContainer: Color { .init(red: 198/255, green: 216/255, blue: 252/255) }
    var onTertiaryContainer: Color { .init(red: 22/255, green: 5/255, blue: 125/255) }
    
    var error: Color { .init(red: 171/255, green: 45/255, blue: 37/255) }
    var onError: Color { .white }
    var errorContainer: Color { .init(red: 249/255, green: 219/255, blue: 215/255) }
    var onErrorContainer: Color { .init(red: 59/255, green: 6/255, blue: 5/255) }
    
    var warning: Color { .init(red: 225/255, green: 186/255, blue: 72/255) }
    var onWarning: Color { .white }
    var warningContainer: Color { .init(red: 254/255, green: 250/255, blue: 190/255) }
    var onWarningContainer: Color { .init(red: 74/255, green: 62/255, blue: 61/255) }
    
    var success: Color { .init(red: 43/255, green: 91/255, blue: 31/255) }
    var onSuccess: Color { .white }
    var successContainer: Color { .init(red: 233/255, green: 248/255, blue: 222/255) }
    var onSuccessContainer: Color { .init(red: 28/255, green: 54/255, blue: 43/255) }
    
    var surfaceDim: Color { .init(red: 217/255, green: 219/255, blue: 210/255) }
    var surface: Color { .init(red: 248/255, green: 250/255, blue: 241/255) }
    var surfaceBright: Color { .init(red: 248/255, green: 250/255, blue: 241/255) }
    var surfaceContainerLowest: Color { .white }
    var surfaceContainerLow: Color { .init(red: 243/255, green: 245/255, blue: 236/255) }
    var surfaceContainer: Color { .init(red: 237/255, green: 239/255, blue: 230/255) }
    var surfaceContainerHigh: Color { .init(red: 231/255, green: 233/255, blue: 224/255) }
    var surfaceContainerHighest: Color { .init(red: 225/255, green: 227/255, blue: 219/255) }
    var onSurface: Color { .init(red: 26/255, green: 28/255, blue: 24/255) }
    var onSurfaceVariant: Color { .init(red: 68/255, green: 72/255, blue: 63/255) }
    
    var inverseSurface: Color { .init(red: 47/255, green: 49/255, blue: 45/255) }
    var inverseOnSurface: Color { .init(red: 241/255, green: 241/255, blue: 235/255) }
    var inversePrimary: Color { .init(red: 146/255, green: 144/255, blue: 191/255) }
    
    var outline: Color { .init(red: 117/255, green: 121/255, blue: 110/255) }
    var outlineVariant: Color { .init(red: 196/255, green: 200/255, blue: 188/255) }
    
    var scrim: Color { .black }
    
    var shadow: Color { .black }
}
