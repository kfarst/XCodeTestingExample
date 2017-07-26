//
//  CustomSetQuickSwiftSpec.swift
//  XCodeTestingExampleTests
//
//  Created by Kevin Farst on 7/26/17.
//  Copyright © 2017 Kevin Farst. All rights reserved.
//

import Quick
import Nimble
@testable import XCodeTestingExample

class CustomSetQuickSpec: QuickSpec {
    override func spec() {
        describe("CustomSet") {
            var set: CustomSet<String>?
            
            beforeEach {
                set = CustomSet<String>()
            }
            
            describe("#insert") {
                context("with a non-existing element") {
                    it("inserts the element") {
                        expect(set!.insert("foo")).toNot(beNil())
                    }
                }
                
                context("with an existing element") {
                    beforeEach {
                        _ = set!.insert("foo")
                    }
                    
                    it("returns the inserted element") {
                        expect(set!.insert("foo")).to(equal("foo"))
                    }
                }
            }
            
            describe("#remove") {
                context("with a non-existing element") {
                    it("returns nothing") {
                        expect(set!.remove("bar")).to(beNil())
                    }
                }
                
                context("with an existing element") {
                    var insertedValue: String?
                    
                    beforeEach {
                        insertedValue = set!.insert("bar")
                    }
                    
                    it("returns the removed element") {
                        expect(set!.remove("bar") == insertedValue).to(beTrue())
                    }
                }
            }
        }
    }
}
