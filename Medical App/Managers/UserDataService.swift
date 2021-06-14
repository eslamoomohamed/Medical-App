//
//  UserDataService.swift
//  Medical App
//
//  Created by eslam on 6/6/21.
//

import Foundation


class UserDataService{
    
    static let shared = UserDataService()

    class func saveApiToken(token: String) {
        let userDefault = UserDefaults.standard
        userDefault.setValue(token, forKey: "token")
        userDefault.synchronize()
    }
    
    
    class func getApiToken() -> String? {
        let userDefault = UserDefaults.standard
        guard let api_token = userDefault.object(forKey: "token") as? String else { return nil }
        return api_token
    }
    
}
