//
//  detailViewController.swift
//  iOS
//
//  Created by epita on 29/03/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    var spot : Spots?
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var lblDish: UILabel!
    @IBOutlet weak var lblRestaurant: UILabel!
    @IBOutlet weak var lblPlace: UILabel!
    @IBOutlet weak var bigImage: UIImageView!
    @IBOutlet weak var lblArea: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImage(named: "hipster")
        myView = UIImageView(image: backgroundImage)
        lblDish.text = spot?.dish
        lblRestaurant.text = spot?.restaurant
        lblPlace.text = spot?.place
        lblArea.text = spot?.description
        bigImage.image = UIImage(named: (spot?.image)!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
