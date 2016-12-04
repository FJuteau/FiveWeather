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
  
  @IBOutlet weak var iconImageViewHeightConstraint: NSLayoutConstraint!
  @IBOutlet weak var iconImageViewWidthConstraint: NSLayoutConstraint!
  
  
  func configure(with viewFormatter: HomeViewFormatter) {
    
    welcomeLabel.text     = viewFormatter.welcome
    temperatureLabel.text = viewFormatter.temperature
    descriptionLabel.text = viewFormatter.weatherDescription
    
    
    let iconURL = URL(string: "http://openweathermap.org/img/w/\(viewFormatter.iconName).png")
    iconImageView.sd_setImage(with: iconURL, completed: { image, error, cacheType, imageURL in
      
      if let image = image {
        
        self.iconImageViewWidthConstraint.constant   = image.size.width
        self.iconImageViewHeightConstraint.constant  = image.size.height
      }
    })
  }
}
