//
//  TrophyConfiguration.swift
//  TrophyKit
//
//  Created by Yubo Qin on 6/30/21.
//

import UIKit

public struct TrophyConfiguration {

    /// Enum for sizes of a trophy banner.
    public enum TrophySize {
        case small
        case medium
        case large
    }
	
	public struct Style: Equatable {
		public let lightColor: UIColor
		public let darkColor: UIColor
		
		public static let success = Style(lightColor: TrophyConfiguration.defaultLightColor, darkColor: TrophyConfiguration.defaultDarkColor)
		public static let info = Style(lightColor: color(73, 132, 228), darkColor: color(49, 84, 142))
		public static let warning = Style(lightColor: color(245, 194, 74), darkColor: color(152, 121, 49))
	}

    public static let defaultLightColor = UIColor(red: 75/255, green: 180/255, blue: 27/255, alpha: 1.0)
    public static let defaultDarkColor = UIColor(red: 15/255, green: 114/255, blue: 15/255, alpha: 1.0)

    public let lightColor: UIColor
    public let darkColor: UIColor
    public let size: TrophySize

    /// Creates a configuration struct.
    /// - Parameters:
    ///   - lightColor: The color of the ball.
    ///   - darkColor: The color of the banner.
    ///   - size: Size of the trophy banner.
    public init(lightColor: UIColor = TrophyConfiguration.defaultLightColor,
                darkColor: UIColor = TrophyConfiguration.defaultDarkColor,
                size: TrophySize = .medium) {
        self.lightColor = lightColor
        self.darkColor = darkColor
        self.size = size
    }
	
	public init(style: Style, size: TrophySize = .medium) {
		self.init(lightColor: style.lightColor, darkColor: style.darkColor, size: size)
	}
}

private func color(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ alpha: CGFloat = 1) -> UIColor {
	UIColor(red: r/255, green: g/255, blue: b/255, alpha: alpha)
}
