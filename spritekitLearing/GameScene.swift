//
//  GameScene.swift
//  spritekitLearing
//
//  Created by Jerry Zhao on 3/25/15.
//  Copyright (c) 2015 Jerry Zhao. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        physicsWorld.gravity = CGVectorMake(0, -9.8)

        let sceneBody = SKPhysicsBody(edgeLoopFromRect: frame.self)
        sceneBody.friction = 0
        self.physicsBody = sceneBody
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch: AnyObject in touches{
            var positionOfTouch = touch.locationInNode(self)

            var ball = SKShapeNode(circleOfRadius: 25)
            ball.fillColor = SKColor.redColor()
            ball.position = positionOfTouch
            ball.physicsBody = SKPhysicsBody(circleOfRadius: 25)
            ball.physicsBody?.affectedByGravity = true
            ball.physicsBody?.restitution = 1
            ball.physicsBody?.linearDamping = 0
            addChild(ball)
        }
            }
   

}
