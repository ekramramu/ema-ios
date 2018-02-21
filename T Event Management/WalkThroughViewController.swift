//
//  WalkThroughViewController.swift
//  T Event Management
//
//  Created by Ekramul Hoque on 21/2/18.
//  Copyright © 2018 Zahidur Rahman Faisal. All rights reserved.
//

import UIKit

class WalkThroughViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var pageControll: UIPageControl!
    
    var contentWidth:CGFloat = 0.0
    var scrollViewheight:CGFloat = 0.0
    
    var labelTextArray = ["Create your event","Invite your guests","Accept or deny request"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.delegate = self
        
        
        
        for image in 0...2 {
            //create image and ImageView
            let imageToDisplay = UIImage(named: "\(image).png")
            let imageView = UIImageView(image: imageToDisplay)
            imageView.contentMode = .center
            
            let xCordinate = view.frame.midX + view.frame.width * CGFloat(image)
            
            contentWidth += view.frame.width
            scrollViewheight = scrollView.frame.height
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: xCordinate - 50, y: (view.frame.height/2)-200, width: 95, height: 0)
            
            
            
            //creating UiLabel

            let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 35))
            label.center = CGPoint(x: xCordinate, y: (view.frame.height/2+40))
            label.textAlignment = .center
            let color = UIColor(hexString: "#FD5C63FF")
            label.textColor = color
            label.font = label.font.withSize(30)
            label.text = labelTextArray[image]


            scrollView.addSubview(label)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height:view.frame.height/2 )
        

       
        
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        print(scrollView.contentOffset)
       pageControll.currentPage = Int(scrollView.contentOffset.x/(414))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension UIColor {
    public convenience init?(hexString: String) {
        let r, g, b, a: CGFloat
        
        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            let hexColor = String(hexString[start...])
            
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255
                    
                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        
        return nil
    }
}
