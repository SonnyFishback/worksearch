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
        guard let companyDataURL = Bundle.main.url(forResource: "companyData", withExtension: "json") else {
            print("Error getting url for company data")
            return
            }

        let decoder = JSONDecoder()
        do {
                let companyData = try Data(contentsOf: companyDataURL)
                companies = try decoder.decode([Company].self, from: companyData)
            print(companies)
            } catch {
            print(error)
        }

    }
}
