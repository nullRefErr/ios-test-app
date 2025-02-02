import SwiftUI


enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    var mainColor: Color {
        var color: Color = Color(.white)
        if (rawValue == "yellow") {
            color = Color(.yellow)
        } else if (rawValue == "poppy") {
            color = Color(.red)
        }else if (rawValue == "orange") {
            color = Color(.orange)
        }
        return color
    }
    var name : String {
        rawValue.capitalized
    }
}
