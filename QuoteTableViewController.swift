//
//  QuoteTableViewController.swift
//  QuickQuotes
//
//  Created by Field Employee on 12/3/20.
//

import UIKit

class QuoteTableViewController: UITableViewController {
    
    
    var quotes = [
    "I love you to the moon & back",
        "There is a friend that is closer then a brother",
        "Do not shake hands in surety, let your yes be yes, and your no be no",
        "Precision based articulation",
        "Offer help to those who can not help themselves",
        "be a voice to the voiceless",
        "control your tounge as a captain would the wheel of a large vessel for it is capable of great destruction",
        "never forget the ones who showed Love when there was nothing to expect in return",
        "He who is the least among you, treat in the same dignity as a rich man",
        "In the end knowledge will fade away, looks will wither, the hopes for your life will have passed you by but Love will remain"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return quotes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
        cell.textLabel?.text = quotes[indexPath.row]
            return cell
        }
        // Configure the cell...
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedQuote = quotes[indexPath.row]
        performSegue(withIdentifier: "moveToQuoteDetail",
                     sender:selectedQuote)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let quoteViewController = segue.destination as?
            QuoteDetailViewController{
            if let selectedQuote = sender as? String {
                quoteViewController.title = selectedQuote
            }
        }
    }
    

}
