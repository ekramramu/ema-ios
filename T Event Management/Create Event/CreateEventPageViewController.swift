//
//  CreateEventPageViewController.swift
//  T Event Management
//
//  Created by Zahidur Rahman Faisal on 17/2/18.
//  Copyright © 2018 Zahidur Rahman Faisal. All rights reserved.
//

import UIKit

class CreateEventPageViewController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.dataSource = self
        self.delegate   = self
        
        if let firstVC = pages.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
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
    
    fileprivate lazy var pages: [UIViewController] = {
        return [
            initViewController(withIdentifier: "CreateEvent1"),
            initViewController(withIdentifier: "CreateEvent2"),
            initViewController(withIdentifier: "CreateEvent3")
        ]
    }()
    
}

extension CreateEventPageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pages.index(of: viewController) else { return nil }
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else { return pages.last }
        guard pages.count > previousIndex else { return nil }
        
        return pages[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pages.index(of: viewController) else { return nil }
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < pages.count else { return pages.first }
        guard pages.count > nextIndex else { return nil }
        
        return pages[nextIndex]
    }
}

extension CreateEventPageViewController: UIPageViewControllerDelegate { }
