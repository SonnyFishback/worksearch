//
//  AppStore.store.swift
//  worksearch
//
//  Created by Sonny Fishback on 1/22/22.
//

import Foundation
import Combine


class AppStore : ObservableObject {
    @Published var employees: [Employee] = []
    @Published var companies: [Company] = []
    
    init() {
        loadJSON()
    }
    
    private func  loadJSON() {
//        Create instance of companyData url.
        guard let companyDataURL = Bundle.main.url(forResource: "Company.data", withExtension: "json"), let employeeDataURL = Bundle.main.url(forResource: "Employee.data", withExtension: "json") else {
          //            If unable to get URLS return
              print("Error: having trouble finding employee data or company data files")
          return
          }

        let decoder = JSONDecoder()
        do {
                let companyData = try Data(contentsOf: companyDataURL)
                let employeeData = try Data(contentsOf: employeeDataURL)
                companies = try decoder.decode([Company].self, from: companyData)
                employees = try decoder.decode([Employee].self, from: employeeData)
            } catch {
            print(error)
        }

    }
    
    func decode<T: Decodable>(decode type: T, from data: Data) {
        do {
            let data = try JSONDecoder().decode([T].self, from: data)
            print(data)
        } catch {
            print(error)
        }
    }
    
}
