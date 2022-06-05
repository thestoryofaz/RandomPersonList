//
//  RandomListViewController.swift
//  RandomPersonList
//
//  Created by aiv on 04.06.2022.
//

import UIKit

class RandomListViewController: UITableViewController {
    
    private let model = DetailPerson.sharedInstance
    private let persons: [Person] = DetailPerson.sharedInstance.persons
    
    private let goToDetail = "goToDetail"
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        cell.textLabel?.text = "\(persons[indexPath.row].firstName) \(persons[indexPath.row].lastName)"
        cell.imageView?.image = UIImage(systemName: "person.crop.square.fill")
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == goToDetail {
            let destinationVC = segue.destination as! InfoViewController
            
            if let indexPath = tableView.indexPathForSelectedRow {
                destinationVC.firstLastName = "\(persons[indexPath.row].firstName) \(persons[indexPath.row].lastName)"
                destinationVC.emails = persons[indexPath.row].emails
                destinationVC.phone = persons[indexPath.row].phoneNumber
            }
        }
    }
}
