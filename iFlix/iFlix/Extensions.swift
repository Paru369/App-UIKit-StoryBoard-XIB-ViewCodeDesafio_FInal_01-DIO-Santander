//
//  Extensions.swift
//  iFlix
//
//  Created by Paulo Pinheiro on 9/15/23.
//

import Foundation


extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
