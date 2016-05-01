//
//  AppDelegate.swift
//  MatchSpriteKit
//
//  Created by Boris Triebel on 01.05.16.
//  Copyright (c) 2016 appcandy. All rights reserved.
//


import Cocoa
import SpriteKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var skView: SKView!
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {

        let windowSize = self.window.frame.size
        print("windowSize = \(windowSize)")

        let screenSize = windowSize
        let mainScene = GameScene(size: screenSize)
        
        mainScene.scaleMode = .AspectFill
        self.skView!.presentScene(mainScene)
        
        self.skView!.showsFPS = true
        self.skView!.showsNodeCount = true        
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
        return true
    }
}
