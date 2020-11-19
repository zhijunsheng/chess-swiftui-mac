//
//  SwapTests.swift
//  ChessTests
//
//  Created by Golden Thumb on 2020-11-19.
//

import XCTest

class SwapTests: XCTestCase {

    func testSwapWithTmp() {
        var a: Int = 3
        var b: Int = 5
        XCTAssertEqual(3, a)
        XCTAssertEqual(5, b)
        
        let tmp = a
        a = b
        b = tmp
        
        XCTAssertEqual(5, a)
        XCTAssertEqual(3, b)
    }

    func testSwapWithTuple() {
        var a: Int = 3
        var b: Int = 5
        XCTAssertEqual(3, a)
        XCTAssertEqual(5, b)
        
        (a, b) = (b, a)
        
        XCTAssertEqual(5, a)
        XCTAssertEqual(3, b)
    }
    
    func testSwapWithoutTmpAndTuple() {
        var a: Int = 3
        var b: Int = 5
        XCTAssertEqual(3, a)
        XCTAssertEqual(5, b)
        
        a = a + b
        b = a - b
        a = a - b
        
        XCTAssertEqual(5, a)
        XCTAssertEqual(3, b)
    }
}
