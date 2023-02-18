//
//  ViewController.swift
//  DiscoverMovie
//
//  Created by Zacky Ilahi Azmi on 18/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var tableview = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureNavigationController()
        configureTableView()
        
    }
    
    func configureNavigationController() {
        view.backgroundColor = .white
        navigationItem.title = "Discover"
    }
    
    func configureTableView() {
        view.addSubview(tableview)
        setTableViewDelegates()
        tableview.rowHeight = 390
        tableview.register(MovieTableViewCell.self, forCellReuseIdentifier: "MovieTableViewCell")
        tableview.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableview.delegate = self
        tableview.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
        cell.configure(gambar: "poster")
        return cell
    }

}

