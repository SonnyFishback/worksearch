//
//  Company.model.swift
//  worksearch
//
//  Created by Sonny Fishback on 1/22/22.
//
import Foundation
import Combine

struct Company: Decodable, Identifiable, Hashable {
    
        
    var id: Int
    var company_name: String
    var company_location: String
    var company_zip: String
    var employees: [Employee]
    
}

let exampleCompany = Company(id: 003, company_name: "T-Mobile", company_location: "3625 132nd Ave SE, Bellevue, WA 98006", company_zip: "98006", employees: [])
