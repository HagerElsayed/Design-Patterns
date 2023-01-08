//
//  Protocols.swift
//  DelegationPattern
//
//  Created by Hager Elsayed on 08/01/2023.
//

import Foundation

protocol LanguageDisplayable: AnyObject {
    func display(items: [String], with totalItems: Int)
}

protocol LanguagePresenterable: AnyObject {
    func viewDidLoad()
}
