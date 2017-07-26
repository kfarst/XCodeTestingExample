//
//  CustomSet.swift
//  XCodeTestingExample
//
//  Created by Kevin Farst on 7/26/17.
//  Copyright © 2017 Kevin Farst. All rights reserved.
//

import Foundation

struct CustomSet<T: Comparable> {
    fileprivate var elements: [T] = [T]()
    
    mutating func insert(_ element: T) -> T {
        if !elements.contains(element) {
            elements.append(element)
        }
        return element
    }
    
    mutating func remove(_ element: T) -> T? {
        guard let index = elements.index(of: element) else {
            return nil
        }
        
        return elements.remove(at: index)
    }
}
