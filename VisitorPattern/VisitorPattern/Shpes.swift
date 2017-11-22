//
//  Shpes.swift
//  VisitorPattern
//
//  Created by victor on 2017. 11. 22..
//  Copyright © 2017년 victor. All rights reserved.
//

import Foundation

class Circle {
    let radius:Float
    
    init(radius:Float) {
        self.radius = radius
    }
}

class Square {
    let length:Float
    
    init(length:Float) {
        self.length = length
    }
}

class Rectangle {
    let xLen:Float
    let yLen:Float
    
    init(x:Float, y:Float) {
        xLen = x; yLen = y
    }
}

class ShapeCollection {
    let shapes:[Any]
    
    init() {
        shapes = [
            Circle(radius: 2.5), Square(length: 4), Rectangle(x: 10, y: 2)
        ]
    }
    
    func calculatedAreas() -> Float {
        return shapes.reduce(0, {total, shape in
            if let circle = shape as? Circle {
                print("Found Circle")
                return total + (3.14 * powf(circle.radius, 2)) // 원의 넓이
            } else if let square = shape as? Square {
                print("Found Square")
                return total + powf(square.length, 2) // 정사각형 넓이
            } else if let rect = shape as? Rectangle {
                print("Found Rectangle")
                return total + (rect.xLen * rect.yLen) // 직사각형 넓이
            } else {
                // unknown type - do nothing
                return total
            }
        })
    }
    
    
}
