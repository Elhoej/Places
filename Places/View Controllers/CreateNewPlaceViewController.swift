//
//  CreateNewPlaceViewController.swift
//  Places
//
//  Created by Simon Elhoej Steinmejer on 26/07/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class CreateNewPlaceViewController: UIViewController, PlacesPresenter
{
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    
    var placeController: PlaceController?
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        latitudeTextField.keyboardType = .numberPad
        longitudeTextField.keyboardType = .numberPad
    }

    @IBAction func createNewPlace(_ sender: Any)
    {
        guard let name = nameTextField.text, let latitude = latitudeTextField.text, let longitude = longitudeTextField.text, let latitudeString = Double(latitude), let longitudeString = Double(longitude) else { return }
        
        placeController?.createPlace(withName: name, latitude: latitudeString, longitude: longitudeString)
        
        longitudeTextField.resignFirstResponder()
    }
    

}






