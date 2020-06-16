//
//  Spade.swift
//  Loaders
//
//  Created by Prafulla Singh on 16/6/20.
//  Copyright © 2020 Prafulla Singh. All rights reserved.
//

import SwiftUI

struct Spade: Shape {
    func path(in rect: CGRect) -> Path {
        
        let (x, y, width, height) = rect.centeredSquare.flatten()
        
        var heartPath = Heart().rotation(.A180).path(in: CGRect(x: x, y: y, width: width, height: height * 0.9)) //take 10% for bottom rect
        let rectPath = Rectangle().path(in: CGRect(x: x + width * 0.4, y: y + height * 0.5, width: width * 0.2, height: height * 0.5))
        
        heartPath.addPath(rectPath)
        return heartPath
    }
}
