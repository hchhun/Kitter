//
//  SizeConstants.swift
//  Kitter
//
//  Created by Hoksolinda Chhun on 2025-01-12.
//

import SwiftUI

struct SizeConstants {
    static var screenCutOff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }
    static var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    static var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}
