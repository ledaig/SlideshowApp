//
//  ZoomViewController.swift
//  SlideshowApp
//
//  Created by linkwood on 2021/10/03.
//

import UIKit

class ZoomViewController: UIViewController {

    var zoom_lc = 0 //　表示画像番号
    let imageName: [String] = ["1.jpg","2.jpg","3.png","4.png","5.png","6.png"]
    var scale:CGFloat = 1.0
    var width:CGFloat = 0
    var height:CGFloat = 0
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0


    
    @IBOutlet weak var zoom_image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //screenWidth = self.view.bounds.width
        //screenHeight = self.view.bounds.height

        let image = UIImage(named: imageName[zoom_lc])!
        
        width = image.size.width
        height = image.size.height
        
        let zoomRect = CGRect(x: 0, y: 0, width: width/2, height: height/2)
        let zoomImageRef = image.cgImage!.cropping(to: zoomRect)
        let zoomImage = UIImage(cgImage: zoomImageRef!)
        
        zoom_image.image = zoomImage
        
        //scale = screenWidth / width
        //let rect:CGRect = CGRect(x:0, y:0, width:width*scale, height:height*scale)
        
    
        //zoom_image.frame = rect;
        //if(width*scale < screenWidth*2 ){
        //    scale += 0.2
        //}
        //let rect_zoom:CGRect = CGRect(x:0, y:0, width:width*scale, height:height*scale)
        //zoom_image.frame = rect_zoom;
        //zoom_image.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
        //self.view.addSubview(zoom_image)

        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
