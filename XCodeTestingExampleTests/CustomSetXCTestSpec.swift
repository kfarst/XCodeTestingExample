//
//  CustomSetXCTestSpec.swift
//  XCodeTestingExampleTests
//
//  Created by Kevin Farst on 7/26/17.
//  Copyright © 2017 Kevin Farst. All rights reserved.
//

import XCTest

@testable import XCodeTestingExample

class CustomSetXCTestSpec: XCTestCase {
    var set: CustomSet<String>?
    
    override func setUp() {
        super.setUp()
        set = CustomSet<String>()
    }
    
    func testCustomSet_insert_insertsNonExistingElement() {
        XCTAssertNotNil(set!.insert("foo"))
    }
    
    func testCustomSet_insert_returnsInsertedElement() {
        let insertedValue = set!.insert("foo")
        XCTAssertEqual(insertedValue, set!.insert("foo"))
    }
    
    func testCustomSet_remove_returnsNothingForNonExistingElement() {
        XCTAssertNil(set!.remove("bar"))
    }
    
    func testCustomSet_remove_returnsRemovedElement() {
        let insertedValue = set!.insert("bar")
        XCTAssertTrue(insertedValue == set!.remove("bar"))
    }
}
