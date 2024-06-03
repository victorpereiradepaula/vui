//
//  ViewExtension.swift
//
//
//  Created by Victor Pereira de Paula on 02/06/24.
//

fileprivate var cornerRadiusTokens: CornerRadiusTokens {
    VUITokensManager.shared.cornerRadiusTokens
}

public enum CornerRadiusToken {
    /// Value from CornerShapeTokens none
    case none
    /// Value from CornerShapeTokens xSmall
    case xSmall
    /// Value from CornerShapeTokens small
    case small
    /// Value from CornerShapeTokens medium
    case medium
    /// Value from CornerShapeTokens large
    case large
    /// Value from CornerShapeTokens xLarge
    case xLarge
    /// Value from CornerShapeTokens full
    case full
    
    fileprivate var radius: CGFloat {
        switch self {
        case .none: return cornerRadiusTokens.none
        case .xSmall: return cornerRadiusTokens.xSmall
        case .small: return cornerRadiusTokens.small
        case .medium: return cornerRadiusTokens.medium
        case .large: return cornerRadiusTokens.large
        case .xLarge: return cornerRadiusTokens.xLarge
        case .full: return cornerRadiusTokens.full
        }
    }
}

public extension View {
    func cornerRadius(token: CornerRadiusToken, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: token.radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
