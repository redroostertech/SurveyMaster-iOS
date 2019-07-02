//
//  requests.swift
//  SurveyMaster
//
//  Created by Ammar Al-Helali on 6/1/19.
//  Copyright © 2019 Ammar Al-Helali. All rights reserved.
//

import Foundation
let defaults = UserDefaults.standard
let URL =  "https://survey-master-server.herokuapp.com/"////"http://192.168.43.120:5000/"
let RegistationURL = URL + "api/users"
let LoginURL = URL + "api/auth"
let ShowSurveysURL = URL + "api/surveys"
let PostURL = URL + "api/surveys"
let header = [
    "x-auth-token" : defaults.string(forKey: "token")
]
let DeleteURL =  URL + "api/surveys/"
