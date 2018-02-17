//
//  FoodViewController.swift
//  T Event Management
//
//  Created by Zahidur Rahman Faisal on 16/1/18.
//  Copyright © 2018 Zahidur Rahman Faisal. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {
    
    let data = ["Pizza", "Burger", "Hot Dog", "French Fries", "Chips", "Taco", "Sandwich"]

    @IBOutlet weak var tableView: UITableView!
    
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
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) { }

}

extension FoodViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }
}

extension FoodViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let createEventVC = initViewController(withIdentifier: "CreateEvent")
//        show(createEventVC, sender: nil)
    }
    
}
