//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Simon Elhoej Steinmejer on 26/07/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlacesTableViewControllerDelegate
{
    //MARK: - Properties
    var placesTableViewController: PlacesTableViewController!
    var mapViewController: MapViewController!
    
    var placeController: PlaceController?
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
    }
    
    func placeWasSelected(place: Place)
    {
        mapViewController.location = place.location
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let tableVC = segue.destination as? PlacesTableViewController
        {
            placesTableViewController = tableVC
            placesTableViewController.placeController = placeController
            placesTableViewController.delegate = self
        }
        
        if let mapVC = segue.destination as? MapViewController
        {
            mapViewController = mapVC
        }
    }
    
}


















