//
//  OrderedObjectSetTests.swift
//  OrderedObjectSetTests
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import XCTest
import OrderedObjectSet

class OrderedObjectSetTests: XCTestCase {
    
    func testOrderedObjectSet() {
        let brad: NSString = "Brad"
        let lorraine: NSString = "Lorraine"
        let evan: NSString = "Evan"
        let scott: NSString = "Scott"
        let sarah: NSString = "Sarah"
        let ivonne: NSString = "Ivonne"
        let natalie: NSString = "Natalie"
        var orderedObjectSet: OrderedObjectSet<NSString> = [brad, lorraine, brad, sarah]
        XCTAssert(orderedObjectSet == [brad, lorraine, sarah])
        orderedObjectSet.append(evan)
        XCTAssert(orderedObjectSet == [brad, lorraine, sarah, evan])
        orderedObjectSet.insert(evan, atIndex: 0)
        XCTAssert(orderedObjectSet == [evan, brad, lorraine, sarah])
        orderedObjectSet[2] = brad
        XCTAssert(orderedObjectSet == [evan, brad, sarah])
        orderedObjectSet.unionInPlace([brad, scott, ivonne])
        XCTAssert(orderedObjectSet == [evan, sarah, brad, scott, ivonne])
        orderedObjectSet.subtractInPlace([brad, evan])
        XCTAssert(orderedObjectSet == [sarah, scott, ivonne])
        orderedObjectSet.intersectInPlace([sarah, brad, ivonne])
        XCTAssert(orderedObjectSet == [sarah, ivonne])
        orderedObjectSet.appendContentsOf([natalie, lorraine])
        orderedObjectSet.exclusiveOrInPlace([ivonne, brad, natalie])
        XCTAssert(orderedObjectSet == [sarah, lorraine, brad])
        orderedObjectSet = orderedObjectSet + [lorraine, natalie]
        XCTAssert(orderedObjectSet == [sarah, brad, lorraine, natalie])
        orderedObjectSet += [sarah, sarah, scott, scott]
        XCTAssert(orderedObjectSet == [brad, lorraine, natalie, sarah, scott])
    }
    
}
