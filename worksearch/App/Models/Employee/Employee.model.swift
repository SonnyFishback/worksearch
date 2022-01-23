//
//  Employee.model.swift
//  worksearch
//
//  Created by Sonny Fishback on 1/22/22.
//

import Foundation

struct Employee: Decodable, Identifiable, Hashable {
    
    let id: Int
    let first_name: String
    let last_name: String
    let DOB: String
    let zip_code: String
    let address: String
    let employer: String
    let employer_id: Int
    let employer_address: String
    
}

let exampleEmployee = Employee(id: 001, first_name: "Sonny", last_name: "Fishback", DOB: "07/31/1999", zip_code: "40211", address: "4019 W Farm Rd", employer: "T-Mobile", employer_id: 110, employer_address: "8093 E Waverly Ln")
