//
//  tableViewController.swift
//  myFoodSpots
//
//  Created by Stefano on 28/03/2018.
//  Copyright © 2018 Stefano. All rights reserved.
//

import UIKit

class tableViewController: UITableViewController {
    
    @IBOutlet var myTableView: UITableView!
    
    var spotsArray : [Spots] = []
    var selected : Spots?
    var clickedIndex : IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set a background
        let backgroundImageAux = UIImage(named: "hipster")
        let imageViewAux = UIImageView(image: backgroundImageAux)
        self.tableView.backgroundView = imageViewAux
        
        let spot1 = Spots(restaurant: " O'Petit Ecuador ", dish: "Shrimp Ceviche", place:" Paris I ", description: "A tipical dish from Ecuador made with shrimps, served cold. PD: remember to bring some friends here for celebrating a birthday or something.", image: "ceviche")
        let spot2 = Spots(restaurant: " Au Bureau ", dish: "Hamburguers", place:" Suresnes ", description: "Lots of different types of hamburguers, served in stone dishes with the classic french fries and some sauce. PD: remember to bring some friends here for celebrating a birthday or something.", image: "hamburguesa")
        let spot3 = Spots(restaurant: " MachuPisco ", dish: "Maracuja Pisco Sour", place:" Paris II ", description: "A drink with Pisco from Perú and south-American exotic fruits. PD: remember to bring some friends here for celebrating a birthday or something.", image: "pisco")
        let spot4 = Spots(restaurant: " O'Petit resto ", dish: "Grilled salmon", place:" Suresnes ", description: "Grilled piece of salmon with vegetables, served with some sauces that depends on your choice. PD: remember to bring some friends here for celebrating a birthday or something.", image: "salmon")
        let spot5 = Spots(restaurant: " O'Jardin Secret ", dish: "Pizza Royale", place:" Suresnes ", description: "Pizza with 2 types of chesse, ham, mushrooms, olives, tomatoes, artichokes.", image: "royale")
        let spot6 = Spots(restaurant: " El Guacamole ", dish: "Tacos", place:" Paris X ", description: "3 Tacos from different choices, served with a drink, fast food restaurant",image: "tacos")
        let spot7 = Spots(restaurant: "L'heure des Mets ", dish: "Big Baba au rhum", place:"1999", description: "A very sweet dessert, french style served with additional stuff deppending on the day.", image: "bigbaba")
        let spot8 = Spots(restaurant: " Le Bonheur ", dish: "Pekin style rice", place:" Suresnes ", description: "Variation of the traditional rice, with ham, chicken, veggies and other stuff.", image: "rice")
        let spot9 = Spots(restaurant: " La cantina ", dish: "Pizza 4 formaggi", place:" Paris XV ", description: "Pizza with 4 different types of cheese, served with bread, salads, look out for promos to get a free drink (wines, beers)", image: "quesos")
        let spot10 = Spots(restaurant: " Elysees Hong-Kong ", dish: "Dumplings", place:" Paris XV ", description: "Mix of different dumplings, classic chinesse style, comes with a spicy sauce, great spot to go.", image: "dumplings")
        
        spotsArray.append(spot1)
        spotsArray.append(spot2)
        spotsArray.append(spot3)
        spotsArray.append(spot4)
        spotsArray.append(spot5)
        spotsArray.append(spot6)
        spotsArray.append(spot7)
        spotsArray.append(spot8)
        spotsArray.append(spot9)
        spotsArray.append(spot10)
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return spotsArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! customTableViewCell
       
        // For round corners
        cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
        cell.layer.cornerRadius = cell.frame.height / 2.5
        cell.myImage?.image = UIImage(named: (spotsArray[indexPath.row].image)!)
        cell.Dish?.text = spotsArray[indexPath.row].dish
        cell.Restaurant?.text = spotsArray[indexPath.row].restaurant
        cell.Place?.text = spotsArray[indexPath.row].place
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //clickedIndex = indexPath
        selected = spotsArray[indexPath.row]
        self.performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! detailViewController
        detailVC.spot = selected
    }
    /*
    override func viewWillAppear(_ animated: Bool) {

        //self.clearsSelectionOnViewWillAppear = self.splitViewController?.isCollapsed
        //super.viewWillAppear(animated)
            
        // Add a background view to the table view
        let backgroundImage = UIImage(named: "blackWall")
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
    }*/
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
