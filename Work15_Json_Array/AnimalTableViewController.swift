//
//  AnimalTableViewController.swift
//  Work15_Json_Array
//
//  Created by 彭有駿 on 2022/5/4.
//

import UIKit
import Kingfisher

class AnimalTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()


    }



    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dog.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "dogMessage", for: indexPath) as?AnimalTableViewCell else{return UITableViewCell()}
        
        let animal = dog[indexPath.row]
        cell.typeLabel.text = animal.variety
        cell.dogImageView.kf.setImage(with: URL(string: animal.image))
        cell.colorLabel.text = animal.colour
        cell.placeLabel.text = animal.place
        cell.sexLabel.text = animal.sex
        
        return cell
    }

    

}
