//
//  VUIButton.swift
//
//
//  Created by Victor Pereira de Paula on 15/06/24.
//

public struct VUIButtonTitleImage {
    var image: Image
    var alignment: HorizontalAlignment
    
    public init(image: Image, alignment: HorizontalAlignment = .trailing) {
        self.image = image
        self.alignment = alignment
    }
}

public enum VUIButtonStyle: String, Codable {
    case primary, secundary, tertiary
}

public enum VUIFill: String, Codable {
    case none, full, line
}

public struct VUIButton: View {
    private var singleImage: Image?
    private var image: Image?
    private var title: String
    private var alignment: HorizontalAlignment?
    private var style: VUIButtonStyle
    private var fill: VUIFill
    private var infintity: Bool
    private var action: () -> Void
    
    public init(title: String,
                style: VUIButtonStyle = .primary,
                fill: VUIFill = .none,
                titleImage: VUIButtonTitleImage? = nil,
                infintity: Bool = false,
                action: @escaping () -> Void) {
        self.title = title
        self.style = style
        self.fill = fill
        self.image = titleImage?.image
        self.alignment = titleImage?.alignment
        self.infintity = infintity
        self.action = action
    }
    
    public init(image: Image,
                accessibilityTitle: String,
                style: VUIButtonStyle = .primary,
                fill: VUIFill = .none,
                action: @escaping () -> Void) {
        self.singleImage = image
        self.title = accessibilityTitle
        self.style = style
        self.fill = fill
        self.infintity = false
        self.action = action
    }
    
    public var body: some View {
        Button(action: action, label: {
            if let singleImage {
                singleImage
                    .renderingMode(.template)
                    .tint(color)
                    .padding(.small)
            } else {
                let isLeftImage = alignment == .leading
                let image = image?
                    .renderingMode(.template)
                    .tint(color)
                    .background(backgroundColor)
                let spacer = infintity ? Spacer() : nil
                HStack(spacing: .zero) {
                    if let image, isLeftImage {
                        image
                        spacer
                    }
                    Text(title)
                        .padding(.horizontal, .small)
                        .tint(color)
                    if let image, !isLeftImage {
                        spacer
                        image
                    }
                }
                .frame(maxWidth: infintity ? .infinity : nil)
            }
        })
        .padding(.all, padding)
        .background(backgroundColor)
        .accessibilityLabel(title)
        .cornerRadius(token: .medium, corners: .allCorners)
        .border(color, width: borderWidth)
    }
    
    var borderWidth: CGFloat {
        return switch fill {
        case .line: 1
        case .none, .full: .zero
        }
    }
    
    var padding: CGFloat {
        return switch fill {
        case .none: .zero
        case .full, .line: .medium
        }
    }
    
    var color: Color {
        return switch fill {
        case .none, .line:
            switch style {
            case .primary: .primary
            case .secundary: .secondary
            case .tertiary: .tertiary
            }
        case .full:
            switch style {
            case .primary: .onPrimary
            case .secundary: .onSecondary
            case .tertiary: .onTertiary
            }
        }
    }
    
    var backgroundColor: Color {
        return switch fill {
        case .none, .line: .clear
        case .full:
            switch style {
            case .primary: .primary
            case .secundary: .secondary
            case .tertiary: .tertiary
            }
        }
    }
}

#Preview {
    VStack(spacing: .large) {
        VUIButton(title: "Olá mundo",
                  fill: .line) {
            print("Olá mundo")
        }
        VUIButton(title: "Direita",
                  style: .secundary,
                  fill: .full,
                  titleImage: .init(image: .init(systemName: "chevron.right"))) {
            print("Direita")
        }
        VUIButton(title: "Esquerda",
                  style: .tertiary,
                  fill: .line,
                  titleImage: .init(image: .init(systemName: "chevron.left"),
                                    alignment: .leading)) {
            print("Esquerda")
        }
        VUIButton(image: .init(systemName: "circle"),
                  accessibilityTitle: "Círculo") {
            print("Círculo")
        }
        VUIButton(title: "Olá mundo",
                  fill: .full,
                  infintity: true) {
            print("Olá mundo")
        }
        VUIButton(title: "Direita",
                  style: .secundary,
                  fill: .line,
                  titleImage: .init(image: .init(systemName: "chevron.right")),
                  infintity: true) {
            print("Direita")
        }
        VUIButton(title: "Esquerda",
                  style: .tertiary,
                  fill: .full,
                  titleImage: .init(image: .init(systemName: "chevron.left"),
                                    alignment: .leading),
                  infintity: true) {
            print("Esquerda")
        }
    }
    .padding(.horizontal, .medium)
}
