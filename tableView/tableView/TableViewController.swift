//
//  TableViewController.swift
//  tableView
//
//  Created by Aruzhan Ashim on 23.10.2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    var albums = [
        Album(albumName: "2093", artistName: "Yeat", albumImage: "2093", description: "2093 is the fourth studio album by American rapper Yeat, released on February 16, 2024, through Capitol Records, Field Trip Recordings and Lyfestyle Corporation. The album features guest appearances from Lil Wayne and Future, while the P2 deluxe edition adds another guest appearance from Drake. It serves as the follow-up to Afterlyfe (2023)."),
        Album(albumName: "Utopia", artistName: "Travis Scott", albumImage: "Utopia", description: "Utopia is the fourth studio album by American rapper Travis Scott. It was released through Cactus Jack and Epic Records on July 28, 2023. The album features guest appearances from Teezo Touchdown, Drake, Playboi Carti, Beyoncé, Rob49, 21 Savage, the Weeknd, Swae Lee, Yung Lean, Dave Chappelle, Young Thug, Westside Gunn, Kid Cudi, Bad Bunny, SZA, Future, and James Blake."),
        Album(albumName: "SOS", artistName: "SZA", albumImage: "SOS", description: "SOS (an initialism for Save Our Ship and Save Our Souls) is the second studio album by American singer-songwriter SZA. It was released on December 9, 2022, by Top Dawg Entertainment and RCA Records. The album features guest appearances from Don Toliver, Phoebe Bridgers, Travis Scott, and the late Ol' Dirty Bastard."),
        Album(albumName: "Testing", artistName: "ASAP Rocky", albumImage: "Testing", description: "Testing is the third studio album by American rapper ASAP Rocky. It was released on May 25, 2018, by ASAP Worldwide, Polo Grounds Music and RCA Records. The album includes guest appearances from Frank Ocean, Kid Cudi, Skepta, French Montana, Kodak Black, Dev Hynes and FKA Twigs, among others, and was produced primarily by Hector Delgado and ASAP Rocky himself, alongside a variety of high-profile record producers."),
            Album(albumName: "Project YVL", artistName: "TWXN", albumImage: "Project_YVL", description: "Project YVL is a collaborative album released on May 24, 2024, featuring TWXN, 507KAZ, and LL Clawz. The album spans 18 tracks with a total duration of around 34 minutes. It blends elements of rap with energetic and hypnotic sounds, fitting into the rage genre. The album showcases diverse musical influences from each artist, creating a dynamic listening experience.")
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
        return albums.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...

        let label = cell.viewWithTag(1001) as! UILabel
        label.text = albums[indexPath.row].albumName
        
        let labelArtist = cell.viewWithTag(1002) as! UILabel
        labelArtist.text = albums[indexPath.row].artistName
        
        let imageView = cell.viewWithTag(1003) as! UIImageView
        imageView.image = UIImage(named: albums[indexPath.row].albumImage)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 91
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        vc.album = albums[indexPath.row]
        
        navigationController?.show(vc, sender: self)
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
