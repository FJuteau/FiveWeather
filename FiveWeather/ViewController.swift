//
//  ViewController.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var currentWeatherDetail: WeatherDetail?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    WeatherDetailProvider.weatherDetail(success: { weatherDetail in
      
      print("Weather Detail : \(weatherDetail)")
      self.currentWeatherDetail = weatherDetail
      
      let homeViewModel = HomeViewModel(with: weatherDetail)
      if let homeView = self.view as? HomeView {
        homeView.configure(with: homeViewModel)
      }
      
    }, failure: {
      print("FAIL")
    })
    
    
  }


}

