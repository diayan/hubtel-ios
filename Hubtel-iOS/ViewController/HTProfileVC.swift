//
//  ViewController.swift
//  Hubtel-iOS
//
//  Created by diayan siat on 01/07/2021.
//

import UIKit

class HTProfileVC: UIViewController {

    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.separatorStyle  = .singleLine
        tableView.backgroundColor = .clear
        tableView.separatorColor  =  .clear
        tableView.allowsMultipleSelection = false
        tableView.showsVerticalScrollIndicator = false
        tableView.delegate   = self
        tableView.dataSource = self
        tableView.register(HTProfileBodyCell.self, forCellReuseIdentifier: HTProfileBodyCell.reuseId)
        tableView.bounces    = false
        tableView.alwaysBounceVertical = false
        tableView.separatorStyle       = .singleLine
        return tableView
    }()

    var headerView: HTHeaderView {
        let view = HTHeaderView(
            frame: CGRect(
                x: 0,
                y: 0,
                width: self.view.frame.width,
                height: 150
            )
        )
        return view
    }

    var viewmodel = AccountOptionViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        layoutViews()
        
        tableView.tableHeaderView = headerView
        navigationController?.navigationBar.barTintColor = UIColor.white

        navigationController?.title = "My Account"
        self.title = "My Account"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.sizeToFit()
    }

    func layoutViews() {
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 24),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24),
        ])
    }
    
}


extension HTProfileVC: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return viewmodel.allSections.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewmodel.allSections[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HTProfileBodyCell.reuseId) as? HTProfileBodyCell else {
            fatalError("HTProfileBodyCell not found")
        }
        let option = viewmodel.allSections[indexPath.section][indexPath.row]
        cell.configure(with: option)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
}
