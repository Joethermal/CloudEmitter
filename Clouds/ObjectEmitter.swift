//
//  CloudEmitter.swift
//  Clouds
//
//  Created by Joseph Ward on 10/09/18.
//  Copyright © 2018 Joethermal. All rights reserved.
//

import UIKit

class ObjectEmitter {
    
    static func get(with image: UIImage) -> CAEmitterLayer {
    let emitter = CAEmitterLayer()
        emitter.emitterShape = kCAEmitterLayerRectangle
        emitter.emitterCells = generateEmitterCells(with: image)
        
        return emitter
    }
    
    static func generateEmitterCells(with image: UIImage) -> [CAEmitterCell] {
        var cells = [CAEmitterCell]()
        
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
        
        cell.birthRate = 0.3
        cell.lifetime = 30
        cell.velocity = CGFloat(30)
        //cell.emissionLatitude = (180 * (.pi/180)) //1.5708
        cell.emissionRange = (5 * (.pi/180))
        cell.scale = 0.18
        cell.scaleRange = 0.12
        
        cells.append(cell)
        
        return cells
    }
    
}
