//
//  HomeViewController.swift
//  UIKitApp
//
//  Created by 291732 on 23/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    @IBOutlet weak var tblProducts: UITableView! {
        didSet{
            self.tblProducts.delegate = self
            self.tblProducts.dataSource = self
            self.tblProducts.layer.cornerRadius = 15
//            self.tblProducts.register(ProductsTableViewCell.nib, forCellReuseIdentifier: ProductsTableViewCell.identifier)
        }
    }
    
    @IBOutlet weak var btnPromotion: UIButton!
    @IBOutlet weak var imgPromo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setView()
    }
    
    private func setView(){
        self.lblTitle.text = "Bienviendo Amigo(a)"
        self.lblDescription.text = "Ahora eres parte de esta logia!, de aqui no podras salir!"
        
    }

}



extension HomeViewController: UITableViewDelegate & UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
