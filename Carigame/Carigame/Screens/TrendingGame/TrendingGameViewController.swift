//
//  TrendingGameViewController.swift
//  Carigame
//
//  Created by Hario Budiharjo on 11/09/22.
//

import UIKit

class TrendingGameViewController: UIViewController {
    
    @IBOutlet weak var tableVIew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVIew.register(UINib(nibName: String(describing: TrendingGameViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: TrendingGameViewCell.self))
        tableVIew.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    let data: [TrendingGameModels] = [
        TrendingGameModels(title: "ELDEN RING", image: UIImage(named: "home")!, category: "Souls like spring", rating: 4.2, price: 5.6),
        TrendingGameModels(title: "God of war", image: UIImage(named: "home")!, category: "Souls like spring", rating: 4.2, price: 5.6),
        TrendingGameModels(title: "GTA", image: UIImage(named: "home")!, category: "Souls like spring", rating: 4.2, price: 5.6),
        TrendingGameModels(title: "ELDEN RING", image: UIImage(named: "home")!, category: "Souls like spring", rating: 4.2, price: 5.6),
        TrendingGameModels(title: "ELDEN RING", image: UIImage(named: "home")!, category: "Souls like spring", rating: 4.2, price: 5.6)
    ]
    
}

extension TrendingGameViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TrendingGameViewCell.self)) as! TrendingGameViewCell
        cell.setData(data: data[indexPath.row])
        return cell
    }
    
    
}
