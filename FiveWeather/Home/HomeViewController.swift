//
//  ViewController.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

  var currentWeatherDetail: WeatherDetail?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    WeatherDetailProvider.weatherDetail(success: { weatherDetail in
      
      self.currentWeatherDetail = weatherDetail
      
      let homeViewFormatter = HomeViewFormatter(with: weatherDetail)
      if let homeView = self.view as? HomeView {
        
        homeView.configure(with: homeViewFormatter)
      }
    }, failure: { errorString in
      
      if let homeView = self.view as? HomeView {
        
        homeView.configure(with: errorString)
      }
    })
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if let detailsViewController = segue.destination as? DetailsViewController {
      
      detailsViewController.currentWeatherDetail = self.currentWeatherDetail
    }
  }
}

