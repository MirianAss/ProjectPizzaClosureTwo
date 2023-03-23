//
//  ScreenValueViewController.swift
//  ProjectPizzaClosureTwo
//
//  Created by Mirian Santana on 23/03/23.
//

import UIKit
import SDWebImage

class ScreenValueViewController: UIViewController {
    
    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var lblPizzaP: UILabel!
    @IBOutlet weak var lblPizzaM: UILabel!
    @IBOutlet weak var lblPizzaG: UILabel!
    
    var value: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlPizza = URL(string: value?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlPizza)
        lblPizzaP.text = "PEQUENA - R$\(value?.priceP ?? 0.0)"
        lblPizzaM.text = "MÉDIA - R$\(value?.priceM ?? 0.0)"
        lblPizzaG.text = "GRANDE - R$\(value?.priceG ?? 0.0)"
        
    }
    
    @IBAction func btBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
