//
//  VUIFill.swift
//
//
//  Created by Victor Pereira de Paula on 16/06/24.
//

public enum VUIFill: String, Codable {
    case none, full, line
    
    var hasBorder: Bool {
        return switch self {
        case .line: true
        case .none, .full: false
        }
    }
}
