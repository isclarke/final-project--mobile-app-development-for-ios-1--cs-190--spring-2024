//
//  ViewController.swift
//  MemeMaker
//
//  Created by Isaiah Clarke on 5/9/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionSegementedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmented: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSegmented()
        changeTopCaptionLabel()
        changeBottomCaptionLabel()
    }
    
     let topChoices: [CaptionOption] = [
            CaptionOption(emoji: "🎶", caption: "You look so musical"),
            CaptionOption(emoji: "🦋", caption: "Fly baby! Fly"),
            CaptionOption(emoji: "😉", caption: "Sup pup")
        ]
        
        let bottomChoices: [CaptionOption] = [
            CaptionOption(emoji: "😍", caption: "I loveee you"),
            CaptionOption(emoji: "😒", caption: "bruhhhh"),
            CaptionOption(emoji: "✋🏿", caption: "please don't start")
        ]
    
    func configureSegmented() {
    topCaptionSegementedControl.removeAllSegments()

        for choice in topChoices {
            topCaptionSegementedControl.insertSegment(withTitle:
           choice.emoji, at: topChoices.count,animated: false)
        }
        
      topCaptionSegementedControl.selectedSegmentIndex = 0
        
        bottomCaptionSegmented.removeAllSegments()
        for choice in topChoices {
            bottomCaptionSegmented.insertSegment(withTitle:
           choice.emoji, at: topChoices.count,animated: false)
        }
       
        bottomCaptionSegmented.selectedSegmentIndex = 0
    
    }
    
    @IBAction func topSegChange(_ sender: UISegmentedControl) {
        changeTopCaptionLabel()
    }
    
    
    @IBAction func bottomSegChange(_ sender: UISegmentedControl) {
        changeBottomCaptionLabel()
    }
    
    func changeTopCaptionLabel() {
        let topIndex = topCaptionSegementedControl.selectedSegmentIndex
        topCaptionLabel.text = topChoices[topIndex].caption
    }
    
    func changeBottomCaptionLabel() {
        let bottomIndex =  bottomCaptionSegmented.selectedSegmentIndex
        bottomCaptionLabel.text = bottomChoices[bottomIndex].caption
    }
        
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            topCaptionLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            bottomCaptionLabel.center = sender.location(in: view)
        }
    }
}

