//
//  PlacesTabBarViewController.swift
//  Places
//
//  Created by Simon Elhoej Steinmejer on 26/07/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class PlacesTabBarViewController: UITabBarController
{
    let placeController = PlaceController()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        for childViewController in childViewControllers
        {
            if let vc = childViewController as? PlacesPresenter
            {
                vc.placeController = placeController
            }
        }
    }



}
