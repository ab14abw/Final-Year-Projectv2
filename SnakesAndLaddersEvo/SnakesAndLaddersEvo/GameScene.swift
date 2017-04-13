//
//  GameScene.swift
//  SnakesAndLaddersEvo
//
//  Created by ab14abw on 10/04/2017.
//  Copyright (c) 2017 ab14abw. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    //Game Board
    var board = SKSpriteNode()
    
    //Player Nodes
    var player = SKSpriteNode()
    var computer = SKSpriteNode()
    
    // Game State Variables
    var playerTurn: Bool = true
    var rolling: Bool = false
    var moveFinished: Bool = true
    var gameOver: Bool = false
    
    // Player Positions
    var playerPositions: Int = 0
    var computerPositions: Int = 0
    
    // Player Labels
    var playerLabel = SKLabelNode()
    var computerLabel = SKLabelNode()
    var PlayerPositionLabel = SKLabelNode()
    var computerPositionLabel = SKLabelNode()
    
    // Game Sounds
    var diceSound: SKAction = SKAction()
    var snakeSound: SKAction = SKAction()
    var ladderSound: SKAction = SKAction()
    var forestSound: SKAction = SKAction()
    
    // New Positions
    let snakePositions = [8:4, 18:1, 26:10, 39:5, 51:6, 54:36, 56:1, 60:23, 75:28, 83:45, 85:59, 90:48, 92:25, 97: 87, 99:63]
    let ladderPositions = [3:20, 6:14, 11:28, 15:34, 17:74, 22:37, 38:59, 49:67, 57:76, 61:78, 73:86, 81:98, 88:91]
    

    
    
    // Z position
    enum objectZPositions: CGFloat {
        case board = 0
        case players = 1
        case labels = 2
        case dice = 3
    }
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.blackColor()
        setupBoard()
        setupSounds()
        
    }
    
    func setupBoard() {
        
        board = SKSpriteNode(imageNamed: "board")
        let boardHeight = self.frame.width / (16.0/9.0)
        board.size = CGSize(width: boardHeight, height: boardHeight)
        board.zPosition = objectZPositions.board.rawValue
        addChild(board)
        
    }
    
    
    func setupSounds() {
        diceSound = SKAction.playSoundFileNamed("dice.mp3", waitForCompletion: false)
        snakeSound = SKAction.playSoundFileNamed("snake.mp3", waitForCompletion: false)
        ladderSound = SKAction.playSoundFileNamed("ladder.mp3", waitForCompletion: false)
        forestSound = SKAction.playSoundFileNamed("forest.mp3", waitForCompletion: false)
        
    }
  
}

