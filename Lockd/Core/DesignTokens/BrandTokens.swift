import SwiftUI

/// Namespace that encapsulates Lock'd design tokens for colors, typography, and spacing.
public enum BrandTokens {
    // MARK: - Colors

    public enum Colors {
        /// Primary neon cyan accent (#4BE3FF).
        public static let neonCyan = Color(hex: 0x4BE3FF)
        /// Secondary neon violet accent (#8D6BFF).
        public static let neonViolet = Color(hex: 0x8D6BFF)
        /// Supporting coral glow accent (#FF5E73).
        public static let coralGlow = Color(hex: 0xFF5E73)
        /// Primary background midnight tone (#0F1220).
        public static let midnight = Color(hex: 0x0F1220)
        /// Secondary background slate tone (#191C2A).
        public static let slate = Color(hex: 0x191C2A)
        /// Frosted surface base with subtle translucency.
        public static let frostedSurface = Color.white.opacity(0.12)
        /// High-contrast text color for dark backgrounds.
        public static let textPrimary = Color.white
        /// Muted text color for secondary information.
        public static let textSecondary = Color.white.opacity(0.72)
        /// Success color used for affirmative states.
        public static let success = Color(hex: 0x4BE3FF)
        /// Warning color used for cautionary highlights.
        public static let warning = Color(hex: 0xFFB347)
        /// Error color used for destructive states.
        public static let error = Color(hex: 0xFF5E73)
    }

    // MARK: - Typography

    public enum Typography {
        /// Title style (28pt size / 34pt leading, semibold).
        public static let title = FontToken(
            font: .custom("Manrope", size: 28, relativeTo: .largeTitle),
            weight: .semibold,
            lineHeight: 34
        )

        /// Heading style (22pt size / 28pt leading, semibold).
        public static let heading = FontToken(
            font: .custom("Manrope", size: 22, relativeTo: .title2),
            weight: .semibold,
            lineHeight: 28
        )

        /// Body style (16pt size / 22pt leading, medium).
        public static let body = FontToken(
            font: .custom("Manrope", size: 16, relativeTo: .body),
            weight: .medium,
            lineHeight: 22
        )

        /// Caption style (13pt size / 18pt leading, medium).
        public static let caption = FontToken(
            font: .custom("Manrope", size: 13, relativeTo: .caption),
            weight: .medium,
            lineHeight: 18
        )
    }

    // MARK: - Spacing

    public enum Spacing {
        /// Base spacing unit (4pt).
        public static let xxs: CGFloat = 4
        /// Small spacing (8pt).
        public static let xs: CGFloat = 8
        /// Medium spacing (12pt).
        public static let sm: CGFloat = 12
        /// Default spacing (16pt).
        public static let md: CGFloat = 16
        /// Large spacing (20pt).
        public static let lg: CGFloat = 20
        /// Extra-large spacing (24pt).
        public static let xl: CGFloat = 24
        /// Double extra-large spacing (32pt).
        public static let xxl: CGFloat = 32
        /// Triple extra-large spacing (40pt).
        public static let xxxl: CGFloat = 40
    }

    // MARK: - Shadows

    public enum Shadows {
        /// Soft inner glow used for pill buttons.
        public static let pillInner = ShadowToken(
            color: Color.white.opacity(0.3),
            radius: 8,
            x: 0,
            y: 2
        )

        /// Elevated card shadow used for frosted surfaces.
        public static let card = ShadowToken(
            color: Color.black.opacity(0.35),
            radius: 20,
            x: 0,
            y: 12
        )
    }
}

// MARK: - Token Models

public struct FontToken {
    public let font: Font
    public let weight: Font.Weight
    public let lineHeight: CGFloat

    public init(font: Font, weight: Font.Weight, lineHeight: CGFloat) {
        self.font = font
        self.weight = weight
        self.lineHeight = lineHeight
    }
}

public struct ShadowToken {
    public let color: Color
    public let radius: CGFloat
    public let x: CGFloat
    public let y: CGFloat

    public init(color: Color, radius: CGFloat, x: CGFloat, y: CGFloat) {
        self.color = color
        self.radius = radius
        self.x = x
        self.y = y
    }
}

// MARK: - Helpers

private extension Color {
    init(hex: UInt32) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue)
    }
}
