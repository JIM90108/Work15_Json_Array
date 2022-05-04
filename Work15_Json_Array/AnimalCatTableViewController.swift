//
//  AnimalCatTableViewController.swift
//  Work15_Json_Array
//
//  Created by 彭有駿 on 2022/5/4.
//

import UIKit

class AnimalCatTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

 
    }


    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return cat.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "catMessage", for: indexPath) as? AnimalCatTableViewCell else{return UITableViewCell()}
        
        let catAnimal = cat[indexPath.row]
        
        cell.sexLabel.text = catAnimal.sex
        cell.placeLabel.text = catAnimal.place
        cell.colorLabel.text = catAnimal.colour
        cell.typeLabel.text = catAnimal.variety
        cell.catImageView.kf.setImage(with: URL(string: catAnimal.image))
        
        
        
        return cell
    }



}
