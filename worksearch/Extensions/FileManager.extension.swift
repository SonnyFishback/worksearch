//
//  FileManager.extension.swift
//  worksearch
//
//  Created by Sonny Fishback on 1/22/22.
//

import Foundation

public extension FileManager {
   static var documentDirectoryURL: URL  {
        `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
}
