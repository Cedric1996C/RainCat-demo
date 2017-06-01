//
//  FoodSprite.swift
//  RainCat
//
//  Created by NJUcong on 2017/5/21.
//  Copyright © 2017年 NJU. All rights reserved.
//

import Foundation
import SpriteKit

public class FoodSprite : SKSpriteNode {
    public static func newInstance() -> FoodSprite {
        let foodDish = FoodSprite(imageNamed: "food_dish")
        
        foodDish.physicsBody = SKPhysicsBody(rectangleOf: foodDish.size)
        foodDish.physicsBody?.categoryBitMask = FoodCategory
        foodDish.physicsBody?.contactTestBitMask = WorldFrameCategory | RainDropCategory | CatCategory
        foodDish.zPosition = 3
        return foodDish
    }
}
