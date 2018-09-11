//
//  ViewController.swift
//  Clouds
//
//  Created by Joseph Ward on 10/09/18.
//  Copyright © 2018 Joethermal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emitObjects()
    }

    func emitObjects() {
        let emitter = ObjectEmitter.get(with: #imageLiteral(resourceName: "white-cloud"))
        emitter.emitterPosition = CGPoint(x: 0, y: 100)
        emitter.emitterSize = CGSize(width: 100, height: 100)
        view.layer.addSublayer(emitter)
    }


}

