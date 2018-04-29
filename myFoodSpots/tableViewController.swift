//
//  tableViewController.swift
//  iOS
//
//  Created by epita on 28/03/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class tableViewController: UITableViewController {
    
    @IBOutlet var myTableView2: UITableView!
    
    var booksArray : [Books] = []
    var selected : Books?
    var clickedIndex : IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let book1 = Books(author: "Author A1", title: "A1 Title", year:"1999", description: "Some book 1 bla bla bla bla bla bla")
        let book2 = Books(author: "Author B2", title: "B2 Title", year:"1999", description: "Some book 2")
        let book3 = Books(author: "Author C3", title: "C3 Title", year:"1999", description: "Some book 3")
        let book4 = Books(author: "Author D4", title: "D4 Title", year:"1999", description: "Some book 4")
        let book5 = Books(author: "Author E5", title: "E5 Title", year:"1999", description: "Some book 5")
        let book6 = Books(author: "Author F6", title: "F6 Title", year:"1999", description: "Some book 6")
        let book7 = Books(author: "Author G7", title: "G7 Title", year:"1999", description: "Some book 7")
        let book8 = Books(author: "Author H8", title: "H8 Title", year:"1999", description: "Some book 8")
        let book9 = Books(author: "Author I9", title: "I9 Title", year:"1999", description: "Some book 9")
        let book10 = Books(author: "Author J10", title: "J10 Title", year:"1999", description: "Some book 10")
        
        booksArray.append(book1)
        booksArray.append(book2)
        booksArray.append(book3)
        booksArray.append(book4)
        booksArray.append(book5)
        booksArray.append(book6)
        booksArray.append(book7)
        booksArray.append(book8)
        booksArray.append(book9)
        booksArray.append(book10)
        
        
        /*
        guard let title = book.title else {
            return
        }
        print("\(book.title)")
        */
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
        return booksArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! customTableViewCell
        // question mark to say that do nothing if textlable is null
        cell.Title?.text = booksArray[indexPath.row].title
        cell.Author?.text = booksArray[indexPath.row].author
        cell.Year?.text = booksArray[indexPath.row].year
        //cell.backgroundView.

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //clickedIndex = indexPath
        selected = booksArray[indexPath.row]
        self.performSegue(withIdentifier: "detailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! detailViewController
        detailVC.book = selected
    }

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
