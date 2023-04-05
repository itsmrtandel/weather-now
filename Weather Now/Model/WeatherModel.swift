//
//  WeatherModel.swift
//  Weather Now
//
//  Created by Amit Tandel on 4/4/23.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
    var conditionBackground: String {
        switch conditionId {
        case 200...232:
            return "cloudybg"
        case 300...321:
            return "rainbg"
        case 500...531:
            return "rainbg"
        case 600...622:
            return "snowbg"
        case 701...781:
            return "cloudybg"
        case 800:
            return "sunnybg"
        case 801...804:
            return "cloudybg"
        default:
            return "sunnybg"
        }
    }
}
