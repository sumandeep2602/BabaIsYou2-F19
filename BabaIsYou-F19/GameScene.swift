//
//  GameScene.swift
//  BabaIsYou-F19
//
//  Created by Parrot on 2019-10-17.
//  Copyright © 2019 Parrot. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
let baba = SKSpriteNode(imageNamed: "baba")
let rocks = SKSpriteNode(imageNamed: "rocks")
     baba.position = CGPoint(x: 0, y: 0)
    override func didMove(to view: SKView)
    {
        self.physicsWorld.contactDelegate = self
        // moving baba in different directions
        
        let moveRightAction = SKAction.moveBy(x: 50, y: 0, duration: 2)
        let moveLeftAction = SKAction.moveBy(x: 0, y: 50, duration: 2)
        let moveUpAction = SKAction.moveBy(x:0, y:50, duration:2)
        let moveDownAction = SKAction.moveBy(x:0, y:-50, duration: 2)
        
        
        // pushing an object
        
        self.physicsWorld.gravity = CGVector(dx:0, dy: 0)
        baba.position = CGPoint(x:self.size.width*0.25, y:self.size.height/2)
        rocks.position = CGPoint(x:self.size.width*0.60, y:self.size.height/2)
        baba.physicsBody = SKPhysicsBody(circleOfRadius: baba.size.width / 2)
        rocks.physicsBody = SKPhysicsBody(rectangleOf:self.rocks.frame.size)
        

        addChild(baba)
        addChild(rocks)
        
        
        let action = SKAction.moveTo(x: self.size.width, duration: 3)
        baba.run(action)
    }
   
    func didBegin(_ contact: SKPhysicsContact) {
        print("Something collided!")
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
