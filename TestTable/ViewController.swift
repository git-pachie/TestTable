//
//  ViewController.swift
//  TestTable
//
//  Created by Pachie Angeles on 31/7/20.
//  Copyright © 2020 Pachie Angeles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var persons = [Person]()
    var friends = [Person]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        persons.append(Person.init(name: "Archie", lastname: "Angeles"))
        persons.append(Person.init(name: "Anabelle", lastname: "Angeles"))
        persons.append(Person.init(name: "Alexander", lastname: "Angeles"))
        persons.append(Person.init(name: "Veronica", lastname: "Angeles"))
        persons.append(Person.init(name: "Donato", lastname: "Angeles"))
        
        
        friends.append(Person.init(name: "Archie", lastname: "Angeles"))
       friends.append(Person.init(name: "Anabelle", lastname: "Angeles"))
       friends.append(Person.init(name: "Alexander", lastname: "Angeles"))
       friends.append(Person.init(name: "Veronica", lastname: "Angeles"))
       friends.append(Person.init(name: "Donato", lastname: "Angeles"))
        
    }


}



class Person{
    var name: String
    var lastname: String
    
    init(name: String, lastname: String) {
        self.name = name
        self.lastname = lastname
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(section == 0)
        {
            return persons.count
        }
        else if(section == 1)
        {
            return friends.count
        }
        else{
            return 0
        }
        
        //return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellfamily", for: indexPath)
        
        if(indexPath.section == 0)
        {
            cell.textLabel?.text = persons[indexPath.row].name
        }
        else if (indexPath.section == 1)
        {
            cell.textLabel?.text = friends[indexPath.row].name
        }
        else{
            cell.textLabel?.text = "Error"
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if(section == 0)
        {
            return "Family"
        }
        else if (section == 1)
        {
            return "Friends"
        }
        else
        {
            return "Error"
        }
    }
    
}




