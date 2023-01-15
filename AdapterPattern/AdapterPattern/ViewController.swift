//
//  ViewController.swift
//  AdapterPattern
//
//  Created by Hager Elsayed on 10/01/2023.
//

import UIKit

public enum AnalyticsName {
    public static let adapterPattern = "adapter-pattern"
}

protocol AnalyticsEngine: AnyObject {
    func sendAnalyticsEvent(named name: String, params: [String: String])
}
// This's only an example for adapter pattern not full implementation of analytics that's why i didn't add GoogleServices-Info.plist

class ViewController: UIViewController {
    var analyticsEngine: AnalyticsEngine!
    override func viewDidLoad() {
        super.viewDidLoad()
        analyticsEngine.sendAnalyticsEvent(named: AnalyticsName.adapterPattern, params: ["data":""])
    }


}

