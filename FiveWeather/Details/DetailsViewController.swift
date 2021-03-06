//
//  DetailsViewController.swift
//  FiveWeather
//
//  Created by François Juteau on 04/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
  
  var currentWeatherDetail: WeatherDetail?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.navigationItem.title = "Details"
    self.navigationController?.navigationBar.pushItem(self.navigationItem, animated: false)
    
    if let weatherDetail = currentWeatherDetail {
      
      let viewFormatter = DetailsViewFormatter(with: weatherDetail)
      if let view = self.view as? DetailsView {
        
        view.configure(with: viewFormatter)
      }
    }
    
  }
}
