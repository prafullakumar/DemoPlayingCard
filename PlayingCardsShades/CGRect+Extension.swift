//
//  CGRect+Extension.swift
//  Loaders
//
//  Created by Prafulla Singh on 16/6/20.
//  Copyright © 2020 Prafulla Singh. All rights reserved.
//

import SwiftUI

extension CGRect {
    var center: CGPoint {
        return CGPoint(x: self.midX, y: self.midY)
    }

    var centeredSquare: CGRect {
        let width = ceil(min(size.width, size.height))
        let height = width

        let newOrigin = CGPoint(x: origin.x + (size.width - width) / 2, y: origin.y + (size.height - height) / 2)
        let newSize = CGSize(width: width, height: height)
        return CGRect(origin: newOrigin, size: newSize)
    }

    func flatten() -> (CGFloat, CGFloat, CGFloat, CGFloat) { 
        return (origin.x, origin.y, size.width, size.height)
    }
}
