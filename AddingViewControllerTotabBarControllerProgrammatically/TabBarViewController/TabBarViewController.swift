//
//  ViewController.swift
//  AddingViewControllerTotabBarControllerProgrammatically
//
//  Created by Ahmet Bostancıklıoğlu on 22.12.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    //MARK: - Create the instances of ViewControllers
    let grayViewController = HomeViewController()
    let blueViewController = FirstViewController()
    let brownViewController = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set title of the viewcontrollers
        grayViewController.title = "home"
        blueViewController.title = "first"
        brownViewController.title = "second"
        
        //Assigne the viewcontrollers to the TabBarViewController
        self.setViewControllers([ grayViewController, blueViewController, brownViewController], animated: false)
        
        //set system images to each tabBars
        guard let items = self.tabBar.items  else {
            return
        }
        
        let images = ["house.fill", "star.fill", "bell.fill"]
        
        for i in 0...2 {
            items[i].image = UIImage(systemName: images[i])
        }
        
        self.tabBar.tintColor = .black
        
    }
    
}
