//
//  ViewController.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    WeatherDetailProvider.weatherDetail(success: { weatherDetail in
      
      print("Weather Detail : \(weatherDetail)")
    }, failure: {
      print("FAIL")
    })
  }


}

