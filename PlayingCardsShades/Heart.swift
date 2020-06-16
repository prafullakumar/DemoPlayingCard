//
//  Heart.swift
//  Loaders
//
//  Created by Prafulla Singh on 16/6/20.
//  Copyright © 2020 Prafulla Singh. All rights reserved.
//

import SwiftUI

struct Heart: Shape {
    func path(in rect: CGRect) -> Path {
        
        let (x, y, width, height) = rect.centeredSquare.flatten()
        let lowerPoint = CGPoint(x: x + width / 2, y: (y + height ))
        
        let path = Path { p in
            p.move(to: lowerPoint)
            p.addCurve(to: CGPoint(x: x, y: (y + (height / 4))),
                  control1: CGPoint(x: (x + (width / 2)), y: (y + (height * 3 / 4))),
                  control2: CGPoint(x: x, y: (y + (height / 2))))
            p.addArc(center: CGPoint(x: (x + (width / 4)), y: (y + (height / 4))),
                radius: (width / 4),
                startAngle: .A180,
                endAngle: .zero,
                clockwise: false)
            p.addArc(center: CGPoint(x: (x + (width * 3 / 4)), y: (y + (height / 4))),
                radius: (width / 4),
                startAngle: .A180,
                endAngle: .zero,
                clockwise: false)
            p.addCurve(to: lowerPoint,
                  control1: CGPoint(x: (x + width), y: (y + (height / 2))),
                  control2: CGPoint(x: (x + (width / 2)), y: (y + (height * 3 / 4))))
        }
        return path
    }
    
}
