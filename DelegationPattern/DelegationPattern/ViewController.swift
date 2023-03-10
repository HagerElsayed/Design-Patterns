//
//  ViewController.swift
//  DelegationPattern
//
//  Created by Hager Elsayed on 04/01/2023.
//

import UIKit

public class LanguagesListViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableview = UITableView(frame: .zero, style: .plain)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.separatorStyle = .none
        tableview.backgroundColor = .clear
        tableview.dataSource = self
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        return tableview
    }()
    
//    private let items = ["Swift", "React Native", "Flutter"]
     let languageService = LanguageService()
    var items = [String]()
    public override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
        self.view.backgroundColor = .white
        languageService.languageLoader = self
        languageService.fetchLanguages()
    }
}

extension LanguagesListViewController: LanguageLoader {
    func didLanguagesLoaded(items: [String], with totalItems: Int) {
        self.items = items
    }
    
    
}

// MARK: Helper
extension LanguagesListViewController {
    func setConstraints() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -5),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
    }
}

// MARK: - UITableViewDataSource
extension LanguagesListViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath)
    -> UITableViewCell {
        let cell =
        tableView.dequeueReusableCell(withIdentifier: "cell",
                                      for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell }
    public func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}

protocol LanguageLoader: AnyObject {
    func didLanguagesLoaded(items: [String], with totalItems: Int)
}

final class LanguageService {
    weak var languageLoader: LanguageLoader?
    
    func fetchLanguages() {
         let items = ["Swift", "React Native", "Flutter"]
        languageLoader?.didLanguagesLoaded(items: items, with: items.count)

    }
}
