//
//  ViewController.swift
//  KennyCapture
//
//  Created by Adem MAMA on 6.12.2017.
//  Copyright © 2017 Adem MAMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var score = 0
    var timer = Timer()
    var time = 30
    var kennyArray = [UIImageView()]
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var lastScoreLabel: UILabel!
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView6: UIImageView!
    @IBOutlet weak var imageView7: UIImageView!
    @IBOutlet weak var imageView8: UIImageView!
    @IBOutlet weak var imageView9: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        imageViewInitialize()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunc), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunc(){
        time -= 1
        timeLabel.text = "Kalan Süre \(time)sn"
        randomKenny()
        if time == 0 {
            timer.invalidate()
            let alert = UIAlertController(title: "Uyari", message: "Süreniz bitmiştir !", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction(title: "Tamam", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated:true, completion: nil)
        }
    }
    
    func randomKenny() {
        for image in kennyArray {
            image.isHidden = true
        }
        let rnd = Int(arc4random_uniform(8))
        kennyArray[rnd].isHidden = false
    }
    
    @objc func capture() {
        score += 1
        scoreLabel.text = "Total Score \(score)"
    }
    
    func imageViewInitialize() {
        kennyArray.append(imageView1)
        kennyArray.append(imageView2)
        kennyArray.append(imageView3)
        kennyArray.append(imageView4)
        kennyArray.append(imageView5)
        kennyArray.append(imageView6)
        kennyArray.append(imageView7)
        kennyArray.append(imageView8)
        kennyArray.append(imageView9)
    }
    
    func initialize()  {
        
        imageView1.isUserInteractionEnabled = true
        imageView2.isUserInteractionEnabled = true
        imageView3.isUserInteractionEnabled = true
        imageView4.isUserInteractionEnabled = true
        imageView5.isUserInteractionEnabled = true
        imageView6.isUserInteractionEnabled = true
        imageView7.isUserInteractionEnabled = true
        imageView8.isUserInteractionEnabled = true
        imageView9.isUserInteractionEnabled = true
        
        let gestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.capture))
        imageView1.addGestureRecognizer(gestureRecognizer1)
        
        let gestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.capture))
        imageView2.addGestureRecognizer(gestureRecognizer2)
        
        let gestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.capture))
        imageView3.addGestureRecognizer(gestureRecognizer3)
        
        let gestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.capture))
        imageView4.addGestureRecognizer(gestureRecognizer4)
        
        let gestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.capture))
        imageView5.addGestureRecognizer(gestureRecognizer5)
        
        let gestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.capture))
        imageView6.addGestureRecognizer(gestureRecognizer6)
        
        let gestureRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(ViewController.capture))
        imageView7.addGestureRecognizer(gestureRecognizer7)
        
        let gestureRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(ViewController.capture))
        imageView8.addGestureRecognizer(gestureRecognizer8)
        
        let gestureRecognizer9 = UITapGestureRecognizer(target: self, action: #selector(ViewController.capture))
        imageView9.addGestureRecognizer(gestureRecognizer9)
    }
}

