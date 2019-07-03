//
//  requests.swift
//  SurveyMaster
//
//  Created by Ammar Al-Helali on 6/1/19.
//  Copyright © 2019 Ammar Al-Helali. All rights reserved.
//

import Foundation
let defaults = UserDefaults.standard
let URL = "http://192.168.1.5:5000/"//"https://survey-master-server.herokuapp.com/"
let RegistationURL = URL + "api/users"
let LoginURL = URL + "api/auth"
let ShowSurveysURL = URL + "api/surveys"
let PostURL = URL + "api/surveys"
let header = [
    "x-auth-token" : defaults.string(forKey: "token")
]
let DeleteURL =  URL + "api/surveys/"
