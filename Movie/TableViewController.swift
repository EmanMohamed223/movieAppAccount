//
//  TableViewController.swift
//  Movie
//
//  Created by Eman on 16/01/2035.
//

import UIKit

class TableViewController: UITableViewController {
    
    var movarr:[movies]?
    //var table = TableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // tableView.reloadData()
//        var movie1 = movies(title: "summer vibes", image: <#UIImage#>, rating:  4.0, releaseYear: 2000, gener: ["action","drama" ,"comedy"], images: "M")
//               var movie2 = movies(title: "lala land", image: "F", rating:  2.5, releaseYear: 2000, gener: ["drama" ,"comedy"])
//             var movie3 = movies(title: "enna with A", image: "me", rating:  4.0, releaseYear: 2000, gener: ["action","drama" ,"comedy"])
//            var movie4 = movies(title: "game", image: "M", rating:  4.5, releaseYear: 2000, gener: ["action","drama" ,"comedy"])
//             var movie5 = movies(title: "back", image: "top", rating:  4.0, releaseYear: 2000, gener: ["action","drama" ,"comedy"])
        var movie1 = movies()
        
        movie1.title = "summer vibes"
        movie1.gener = ["action","drama" ,"comedy"]
        movie1.rating = 2.0
       // movie1!.images = "F"
        movie1.releaseYear = 2000
        var movie2 = movies()
        movie2.title = "lala land"
        movie2.gener = ["drama" ,"comedy"]
        movie2.rating = 5.0
     //   movie1!.images = ""
        movie2.releaseYear = 2000
        var movie3 = movies()
        movie3.title = "game"
        movie3.gener = ["drama","magic"]
        movie3.rating = 4.0
      //  movie1!.images = ""
        movie3.releaseYear = 2000
        var movie4 = movies()
        movie4.title = "back"
        movie4.gener = ["drama","scinecefiction"]
        movie4.rating = 4.4
        movie4.releaseYear = 2000
        
       movarr = [movie1,movie2,movie3,movie4]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
     //   tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movarr!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        var temp :movies?
      
        temp = movarr![indexPath.row]
        cell.textLabel?.text=temp?.title;
        
        // Configure the cell...
        //cell.textLabel?.text = "e"
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var details :ViewController = self.storyboard?.instantiateViewController(withIdentifier: "data") as! ViewController
        details.data = movarr![indexPath.row]
        self.navigationController?.pushViewController(details, animated: true)
    }
    
    @IBAction func addbtm(_ sender: Any) {
        var alert = UIAlertController(title:"adding !" , message: "do you want to add new movie?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default , handler: { [self] action in
           // var index = indexPath.row
            var addscren :AddViewController = self.storyboard?.instantiateViewController(withIdentifier: "add") as!AddViewController
            addscren.viewObj = self
            self.navigationController?.pushViewController(addscren, animated: true)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel , handler: nil))
        self.present(alert, animated: true)
       
    }
    
  
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
   

   
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            var alert = UIAlertController(title:"Take Care !" , message: "do you want to delete this movie?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default , handler: { [self] action in
               // var index = indexPath.row
                movarr?.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
               
                tableView.reloadData()
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel , handler: nil))
            self.present(alert, animated: true)
           
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension TableViewController : AddProtocol
{
    func addMovie (mov:movies){
     //   let newarr:[movies] = [mov]
       // movarr! += newarr
        movarr?.append(mov)
        self.tableView.reloadData()
       
    }
}
