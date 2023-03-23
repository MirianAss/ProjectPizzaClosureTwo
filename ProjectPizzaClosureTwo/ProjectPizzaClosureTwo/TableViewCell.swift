//
//  TableViewCell.swift
//  ProjectPizzaClosureTwo
//
//  Created by Mirian Santana on 23/03/23.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblPizzaName: UILabel!
    @IBOutlet weak var imagePizza: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupPizza(pizza: PizzaElement?) {
        
        lblPizzaName.text = pizza?.name
        let urlImage = URL(string: pizza?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
    }
    
}
