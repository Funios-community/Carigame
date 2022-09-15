//
//  DetailViewController.swift
//  Carigame
//
//  Created by Hario Budiharjo on 11/09/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var priceView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = 100
        contentView.layer.maskedCorners = [.layerMaxXMinYCorner]
        
        priceView.clipsToBounds = true
        priceView.layer.cornerRadius = 20
        priceView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
