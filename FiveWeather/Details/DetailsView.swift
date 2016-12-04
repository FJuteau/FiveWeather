//
//  DetailsView.swift
//  FiveWeather
//
//  Created by François Juteau on 04/12/2016.
//  Copyright © 2016 François Juteau. All rights reserved.
//

import UIKit

class DetailsView: UIView {
  
  @IBOutlet weak var iconImageView: UIImageView!
  
  @IBOutlet weak var temperatureLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  
  @IBOutlet weak var cloudsLabel: UILabel!
  
  @IBOutlet weak var minTemperatureLabel: UILabel!
  @IBOutlet weak var maxTemperatureLabel: UILabel!
  @IBOutlet weak var pressureLabel: UILabel!
  @IBOutlet weak var seaLevelLabel: UILabel!
  @IBOutlet weak var groundLevelLabel: UILabel!
  @IBOutlet weak var humidityLabel: UILabel!
  
  @IBOutlet weak var mainWeatherLabel: UILabel!
  
  @IBOutlet weak var windSpeedLabel: UILabel!
  @IBOutlet weak var windDegreeLabel: UILabel!
  
  @IBOutlet weak var iconImageViewWidthConstraint: NSLayoutConstraint!
  @IBOutlet weak var iconImageViewHeightConstraint: NSLayoutConstraint!
  
  
  func configure(with viewFormatter: DetailsViewFormatter) {
    
    let iconURL = URL(string: "http://openweathermap.org/img/w/\(viewFormatter.iconName).png")
    iconImageView.sd_setImage(with: iconURL, completed: { image, error, cacheType, imageURL in
      
      if let image = image {
        
        self.iconImageViewWidthConstraint.constant   = image.size.width
        self.iconImageViewHeightConstraint.constant  = image.size.height
        
        self.layoutIfNeeded()
      }
    })
    
    temperatureLabel.text = viewFormatter.temperature
    descriptionLabel.text = viewFormatter.weatherDescription
    
    cloudsLabel.text = viewFormatter.clouds
    
    minTemperatureLabel.text = viewFormatter.minTemperature
    maxTemperatureLabel.text = viewFormatter.maxTemperature
    pressureLabel.text = viewFormatter.pressure
    seaLevelLabel.text = viewFormatter.seaLevel
    groundLevelLabel.text = viewFormatter.groundLevel
    humidityLabel.text = viewFormatter.humidity
    
    mainWeatherLabel.text = viewFormatter.mainWeather
    
    windSpeedLabel.text = viewFormatter.windSpeed
    windDegreeLabel.text = viewFormatter.windDegree
    
  }
}
