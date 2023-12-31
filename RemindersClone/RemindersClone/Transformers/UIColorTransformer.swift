//
//  UIColorTransformer.swift
//  RemindersClone
//
//  Created by Thomas Cowern on 10/11/23.
//

import Foundation
import UIKit

class UIColorTransformer: ValueTransformer {
    
    override func transformedValue(_ value: Any?) -> Any? {
        
        // Check a color is valid
        guard let color = value as? UIColor else {
            return nil
        }
        
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: color, requiringSecureCoding: true)
            return data
        } catch {
            return nil
        }
        
    }
    
    override func reverseTransformedValue(_ value: Any?) -> Any? {
        
        // Check data is valid
        guard let data = value as? Data else {
            return nil
        }
        
        do {
            let color = try NSKeyedUnarchiver.unarchivedObject(ofClass: UIColor.self, from: data)
            return color
        } catch {
            return nil
        }
        
        
    }
    
}
