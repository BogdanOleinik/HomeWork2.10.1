//
//  TableViewController.swift
//  HomeWork2.10.1
//
//  Created by Олейник Богдан on 01.02.2022.
//

import UIKit

class TableViewController: UITableViewController {

    private var courses: [Course] = []
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        courses.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let course = courses[indexPath.row]
        cell.configure(with: course)

        return cell
    }
  
    // MARK: - Networking
    func fetchCourses() {
        guard let url = URL(string: link) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                self.courses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.sync {
                    self.tableView.reloadData()
                }
            } catch let error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
}
