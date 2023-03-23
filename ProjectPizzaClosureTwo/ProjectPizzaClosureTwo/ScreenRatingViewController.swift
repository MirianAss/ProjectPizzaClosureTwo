//
//  ScreenRatingViewController.swift
//  ProjectPizzaClosureTwo
//
//  Created by Mirian Santana on 23/03/23.
//

import UIKit

class ScreenRatingViewController: UIViewController {

    @IBOutlet weak var lblRating: UILabel!
    
    var rating: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblRating.text = "Segundo nossos clientes, a pizza de \(rating?.name ?? "") está na posição - \(rating?.rating ?? 0)/5 - de aprovação"
    }
    
    @IBAction func btAdvance(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "value") as? ScreenValueViewController {
            
            screen.value = self.rating
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
    
    @IBAction func btBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
