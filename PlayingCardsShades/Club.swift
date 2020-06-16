//
//  Club.swift
//  Loaders
//
//  Created by Prafulla Singh on 16/6/20.
//  Copyright © 2020 Prafulla Singh. All rights reserved.
//

import SwiftUI

struct Club: Shape {
    func path(in rect: CGRect) -> Path {
        
        let (x, y, width, height) = rect.centeredSquare.flatten()
        let center = rect.centeredSquare.center
        
        let center1 = CGPoint(x: x + width / 2, y: (y + height/4 ))
        let center2 = CGPoint(x: x + width / 4, y: (y + height/2 ))
        let center3 = CGPoint(x: x + width * 3 / 4, y: (y + height/2 ) )
        let radius =  (width / 4)
        let path = Path { p in
            p.move(to: center)
            p.addArc(center: center1,
                     radius: radius,
                startAngle: .A360,
                endAngle: .zero,
                clockwise: true)
            p.addArc(center: center2,
                    radius: radius,
                    startAngle: .A360,
                    endAngle: .zero,
                    clockwise: true)
            p.addArc(center: center3,
                     radius: radius,
                 startAngle: .A360,
                    endAngle: .zero,
                    clockwise: true)
            p.move(to: center)
            p.addLine(to: CGPoint(x: x + width / 4, y: y + height))
            p.addLine(to: CGPoint(x: x + width * 3 / 4, y: y + height))
            p.addLine(to: center)
        }
        
        return path
    }
}
