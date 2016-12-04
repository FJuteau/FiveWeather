//
//  HomeView.swift
//  FiveWeather
//
//  Created by François Juteau on 03/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import Foundation
import UIKit

class HomeView: UIView {
  
  @IBOutlet weak var welcomeLabel: UILabel!
  @IBOutlet weak var temperatureLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var iconImageView: UIImageView!
  
  func configure(with viewModel: HomeViewModel) {
    
    welcomeLabel.text     = viewModel.welcomeString
    temperatureLabel.text = viewModel.temperatureString
    descriptionLabel.text = viewModel.weatherDescriptionString
  }
}
