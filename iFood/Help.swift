//
//  Help.swift
//  iFood
//
//  Created by Christopher Hicks on 4/15/21.
//

import UIKit

extension Bundle {
    
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            
            fatalError("failed")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            
            fatalError("failed to do it")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            
            fatalError("Failed")
        }
        
        return loaded
    }
    
}
