//
//  FactorialTest.swift
//  Asn1BIntTests
//
//  Created by Leif Ibsen on 19/05/2022.
//

import XCTest
@testable import Asn1BInt

class FactorialTest: XCTestCase {

    func simpleFac(_ n: Int) -> BInt {
        XCTAssertTrue(n > 0)
        var x = BInt.ONE
        for i in 1 ... n {
            x *= i
        }
        return x
    }

    func test() {
        XCTAssertEqual(BInt.factorial(0), BInt.ONE)
        for i in 1 ... 1000 {
            XCTAssertEqual(BInt.factorial(i), simpleFac(i))
        }
    }

}
