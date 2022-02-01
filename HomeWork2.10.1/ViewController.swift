//
//  ViewController.swift
//  HomeWork2.10.1
//
//  Created by Олейник Богдан on 01.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func buttonActionPressed() {
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showCourses" {
                guard let coursesVC = segue.destination as? TableViewController else { return }
                coursesVC.fetchCourses()
            }
        }
    }
}
