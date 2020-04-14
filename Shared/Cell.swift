//
//  Cell.swift
//  Conway's Game of Life
//
//  Created by Albertino Padin on 4/19/17.
//  Copyright © 2017 Albertino Padin. All rights reserved.
//

import Foundation
import SpriteKit

public class Cell: SKSpriteNode {
    
    public var alive: Bool
    private var colorNode: SKSpriteNode
    
    public init(frame: CGRect, alive: Bool = false, color: UIColor = .blue) {
        self.alive = alive
        
        // Is SKSpriteNode more performant than SKShapeNode?
        self.colorNode = SKSpriteNode(color: color,
                                      size: CGSize(width: frame.size.width * 0.8,
                                                   height: frame.size.height * 0.8))
        self.colorNode.position = CGPoint.zero
        
        super.init(texture: nil, color: .black, size: frame.size)
        self.position = frame.origin
        self.addChild(self.colorNode)
        
    }
    
    public func makeLive() {
        self.alive = true
        self.colorNode.color = .green
    }
    
    public func makeDead() {
        self.alive = false
        self.colorNode.color = UIColor(red: 0.16, green: 0.15, blue: 0.30, alpha: 1.0)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
