//
//  ZoomViewController.swift
//  SlideshowApp
//
//  Created by linkwood on 2021/09/29.
//

import UIKit

class ZoomViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImg: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        imageView.image = selectedImg
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
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
