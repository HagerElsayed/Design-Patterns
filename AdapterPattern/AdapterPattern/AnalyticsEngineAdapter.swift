//
//  AnalyticsEngineAdapter.swift
//  AdapterPattern
//
//  Created by Hager Elsayed on 11/01/2023.
//

import Foundation
import FirebaseAnalytics

public final class AnalyticsEngineAdapter: AnalyticsEngine {
    func sendAnalyticsEvent(named name: String, params: [String : String]) {
        Analytics.logEvent(name, parameters: params)
    }
   
}
