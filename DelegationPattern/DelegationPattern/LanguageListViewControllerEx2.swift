//
//  LanguageListViewControllerEx2.swift
//  DelegationPattern
//
//  Created by Hager Elsayed on 08/01/2023.
//

import UIKit

public class LanguageListViewControllerEx2: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableview = UITableView(frame: .zero, style: .plain)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.separatorStyle = .none
        tableview.backgroundColor = .clear
        tableview.dataSource = self
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        return tableview
    }()
    
    private var items = [String]()
    weak var languagePresenterable: LanguagePresenterable?
    public override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
        self.view.backgroundColor = .white
        languagePresenterable?.viewDidLoad()
    }
}

// MARK: Helper
extension LanguageListViewControllerEx2 {
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

extension LanguageListViewControllerEx2: LanguageDisplayable {
    func display(items: [String], with totalItems: Int) {
        self.items = items
    }
    
}
// MARK: - UITableViewDataSource
extension LanguageListViewControllerEx2: UITableViewDataSource {
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


final class LanguagesListPresenter {
    
    weak var languageDisplayable: LanguageDisplayable?
    
    init(languageDisplayable: LanguageDisplayable) {
        self.languageDisplayable = languageDisplayable
    }
    
    func fetchLanguages() {
        let items = ["Swift", "React Native", "Flutter"]
        languageDisplayable?.display(items: items, with: items.count)
    }
}

extension LanguagesListPresenter: LanguagePresenterable {
    func viewDidLoad() {
        fetchLanguages()
    }
    
}
