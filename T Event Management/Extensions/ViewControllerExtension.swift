//
//  ViewControllerExtension.swift
//  T Event Management
//
//  Created by Zahidur Rahman Faisal on 17/2/18.
//  Copyright © 2018 Zahidur Rahman Faisal. All rights reserved.
//

import UIKit

extension UIViewController {

    func initViewController(withIdentifier identifier: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    
}
