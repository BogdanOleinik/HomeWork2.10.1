//
//  Books.swift
//  HomeWork2.10.1
//
//  Created by Олейник Богдан on 01.02.2022.
//


struct Course: Decodable {
    let name: String?
    let number_of_lessons: Int?
    let number_of_test: Int?
}

let link = "https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/en.wikipedia/all-access/all-agents/Tiger_King/daily/20210901/20210930"
