//
//  ViewController.swift
//  GitHubPractice2
//
//  Created by Alex Hotca on 4/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var array: [String] = ["Dog", "Cat", "Hamster"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        myCell.textLabel?.text = array[indexPath.row]
        return myCell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ViewController2
        guard let selectedRow = tableView.indexPathForSelectedRow?.row else {return}
        destinationVC.animalName = array[selectedRow]
    }
    
}

