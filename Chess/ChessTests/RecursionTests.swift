//
//  RecursionTests.swift
//  ChessTests
//
//  Created by Golden Thumb on 2020-11-19.
//

import XCTest

class RecursionTests: XCTestCase {
    
    func fact(_ n: Int) -> Int {
        if n == 1 {
            return n
        }
        return n * fact(n - 1)
    }

    func testFactorial() {
        XCTAssertEqual(120, fact(5))
        XCTAssertEqual(720, fact(6))
    }
    
    func gcd(m: Int, n: Int) -> Int {        
        return n == 0 ? m : gcd(m: n, n: m % n)
    }

    func testGCD() {
        XCTAssertEqual(3, gcd(m: 24, n: 15))
        XCTAssertEqual(8, gcd(m: 24, n: 16))
        XCTAssertEqual(1, gcd(m: 7, n: 13))
    }
}
