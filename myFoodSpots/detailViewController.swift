//
//  detailViewController.swift
//  iOS
//
//  Created by epita on 29/03/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    var book : Books?
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblPublisher: UILabel!
    @IBOutlet weak var lblArea: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblTitle.text = book?.title
        lblAuthor.text = book?.author
        lblPublisher.text = book?.year
        lblArea.text = book?.description
        // myimage.image = UImage(named: (book?img)!)
        
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
