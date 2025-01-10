//
//  VUICard.swift
//
//
//  Created by Victor Pereira de Paula on 15/06/24.
//

import SwiftUI

public struct VUICard<Content: View>: View {
    var content: Content
    var fill: VUIFill
    
    public init(fill: VUIFill, @ViewBuilder content: () -> Content) {
        self.fill = fill
        self.content = content()
    }
    
    public var body: some View {
        content
            .padding(.medium)
            .background(Color.surface)
            .cornerRadius(token: .medium, corners: .allCorners,
                          border: .init(color: .outlineVariant,
                                        hasBorder: fill.hasBorder))
            .shadow(radius: radius)
    }
    
    var radius: CGFloat {
        return switch fill {
        case .none, .line: .zero
        case .full: .shadowRadius
        }
    }
}

#Preview {
    VStack(spacing: .xLarge) {
        VUICard(fill: .full) {
            Text("Full")
                .frame(height: 100)
                .frame(maxWidth: .infinity)
        }
        
        VUICard(fill: .line) {
            Text("Line")
                .frame(height: 100)
                .frame(maxWidth: .infinity)
        }
        
        VUICard(fill: .none) {
            Text("None")
                .frame(height: 100)
                .frame(maxWidth: .infinity)
        }
    }
    .padding()
}
