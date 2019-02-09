//
//  Array+Extension.swift
//
//  Created by michael dunn on 2/9/19.
//  Copyright © 2019 michael dunn. All rights reserved.
//


///
/// Generic array extension to flatten array of an array of arbitrarily nested arrays of a given Type
///

extension Array {
    
    func flatten<Element>() -> [Element] {
        
        // check if array is already a single level of Element
        
        if let elementArray = self as? [Element] {
            return elementArray
        }
        
        
        // iterate over each item
        // if the item is of type Element or [Element] add to results
        // if the item is of type [Any] add flatten(item) to results
        // if the item is neither type of Element, [Element] or [Any] then ignore
        
        var result: [Element] = []
        
        forEach {
            switch $0 {
            case let elementA as Element:
                result.append(elementA)
            case let elementArray as [Element]:
                result.append(contentsOf: elementArray)
            case let anyArray as [Any]:
                result.append(contentsOf: anyArray.flatten())
            default:
                // ignore unsupported element
                break
            }
        }
        return result
    }
}
