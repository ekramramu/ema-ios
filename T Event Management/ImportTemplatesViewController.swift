//
//  ImportTemplatesViewController.swift
//  T Event Management
//
//  Created by Zahidur Rahman Faisal on 16/1/18.
//  Copyright © 2018 Zahidur Rahman Faisal. All rights reserved.
//

import UIKit

class ImportTemplatesViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    static func instantiate() -> ImportTemplatesViewController {
        return UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "ImportTemplatesViewController") as! ImportTemplatesViewController
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) { }
    
}

extension ImportTemplatesViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TemplateCell", for: indexPath) as! TemplateCell
        
        cell.imageView.image = UIImage.init(named: "sample_cagetory.png")
        cell.layer.cornerRadius = 4
        
        return cell
    }
    
}

extension ImportTemplatesViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
}
