//
//  CreateEvent3ViewController.swift
//  T Event Management
//
//  Created by Zahidur Rahman Faisal on 19/2/18.
//  Copyright © 2018 Zahidur Rahman Faisal. All rights reserved.
//

import UIKit

class CreateEvent3ViewController: UIViewController {

    @IBOutlet weak var buttonCreateFloorPlan: ShadowButton!
    @IBOutlet weak var buttonFoodAndDrinks: ShadowButton!
    @IBOutlet weak var viewDivider: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

    @IBAction func onClickCreateFloorPlan(_ sender: Any) {
        buttonCreateFloorPlan.isHidden = false
        viewDivider.isHidden = true
    }
    
    @IBAction func onClickCreateFoodAndDrinks(_ sender: Any) {
        buttonFoodAndDrinks.isHidden = false
        viewDivider.isHidden = true
    }
    
}
