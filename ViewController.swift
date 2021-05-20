//
//  ViewController.swift
//  African foods
//
//  Created by ELVIS WANJOHI on 26/04/2021.
//

import UIKit
import os.log

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
    @IBOutlet var tableView: UITableView!
    
   
    var meals = [africanDishes]()
    
    
    
//    var foods = [
//        "Meal 1 - Ugali Cook Time: 45min Feeds: 10",
//        "Meal 2 - Rice Cook Time: 15Min Feeds: 2",
//        "Meal 3 - mukimo Cook Time: 25Min Feeds: 3",
//        "Meal 4 - Fish Cook Time: 30Min Feeds:6"
//    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Menu"
        navigationController?.navigationBar.prefersLargeTitles = true

        tableView.delegate = self
        tableView.dataSource = self

    }




//extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me!")
    }
//}

//extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        let meal = meals[indexPath.row ]
        
        cell.nameLabel.text = meal.type
        cell.name2Label.text = meal.time
        cell.name3Label.text = meal.feeds
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle:   UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            meals.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }
    }
    
    private func loadMeals() {
        guard let meal1 = africanDishes (type:"Ugali", time: 45, feeds: 20) else {
            fatalError("Unable to instantiate meal1")
        }
        guard let meal2 = africanDishes (type:"Rice", time: 15, feeds: 15) else {
            fatalError("Unable to instantiate meal2")
        }
        guard let meal3 = africanDishes (type:"Mukimo", time: 20, feeds: 20) else {
            fatalError("Unable to instantiate meal3")

        }
        guard let meal4 = africanDishes (type:"Fish", time: 30, feeds: 10) else {
            fatalError("Unable to instantiate meal4")

        }
        
        
        meals += [meal1, meal2, meal3]
    }
    
    
    private func loadMeals() -> [africanDishes]? {
   
    }
    
    
    
}
//}







