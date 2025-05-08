//
//  Bundle.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/8/25.
//

import Foundation

extension Bundle {
    var openWeatherAPIKey: String {
        get {
            guard let filePath = Bundle.main.path(forResource: "SecretKey", ofType: "plist") else {
                fatalError("Couldn't find file 'SecretKey.plist'.")
            }
            let plist = NSDictionary(contentsOfFile: filePath)
            
            guard let value = plist?.object(forKey: "OPENWEATHERMAP_KEY") as? String else {
                fatalError("Couldn't find key 'OPENWEATHERMAP_KEY' in 'SecretKey.plist'.")
            }
            return value
        }
    }
}
