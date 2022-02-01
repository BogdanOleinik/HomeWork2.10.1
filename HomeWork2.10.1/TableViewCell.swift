//
//  TableViewCell.swift
//  HomeWork2.10.1
//
//  Created by Олейник Богдан on 01.02.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var numberOfLessonsLabel: UILabel!
    @IBOutlet var numberOfTests: UILabel!

    func configure(with course: Course) {
        nameLabel.text = course.name
        numberOfLessonsLabel.text = "Number of lessons: \(course.number_of_lessons ?? 0)"
        numberOfTests.text = "Number of tests: \(course.number_of_test ?? 0)"
    }

}
