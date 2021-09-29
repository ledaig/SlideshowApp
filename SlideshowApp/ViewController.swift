//
//  ViewController.swift
//  SlideshowApp
//
//  Created by linkwood on 2021/09/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    let imageName: [String] = ["1.jpg","2.jpg","3.png","4.png","5.png","6.png"]
    var lc = 0 //　表示画像番号
    var timer: Timer!
    // タイマー用の時間のための変数
    var timer_sec: Float = 0 // 一応Floatで定義
    var timer_switch = 0 // タイマー起動中:1

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sampleImage = UIImage(named: imageName[lc])
        image.image = sampleImage
        
        image.isUserInteractionEnabled = true
        image.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapped)))

    }
    @objc func tapped() {
    }
    
    @objc func updateTimer(_ timer: Timer) {
        lc = lc + 1
        if( lc == 6 ){
            lc=0
        }
        let sampleImage = UIImage(named: imageName[lc])
        image.image = sampleImage
    }
    
    @IBAction func backButton(_ sender: Any) {
        if (timer_switch == 0) {
            lc = lc - 1
            if( lc == -1 ){
                lc=5
            }
            let sampleImage = UIImage(named: imageName[lc])
            image.image = sampleImage
        }
    }
    @IBAction func fowardButton(_ sender: Any) {
        if (timer_switch == 0) {
            lc = lc + 1
            if( lc == 6 ){
                lc=0
            }
            let sampleImage = UIImage(named: imageName[lc])
            image.image = sampleImage
        }
    }
    @IBAction func playButton(_ sender: Any) {
        if( timer_switch == 0){
        self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            timer_switch = 1
        } else {
            timer_switch = 0
            self.timer.invalidate()
        }
    }

}

