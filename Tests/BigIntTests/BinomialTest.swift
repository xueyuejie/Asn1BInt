//
//  BinomialTest.swift
//  Asn1BIntTests
//
//  Created by Leif Ibsen on 26/05/2022.
//

import XCTest
@testable import Asn1BInt

class BinomialTest: XCTestCase {

    func doTest(_ n: Int) {
        for k in 0 ... n {
            XCTAssertEqual(BInt.binomial(n, k), BInt.factorial(n) / (BInt.factorial(k) * BInt.factorial(n - k)))
        }
    }

    func test1() {
        XCTAssertEqual(BInt.binomial(0, 0), BInt.ONE)
        XCTAssertEqual(BInt.binomial(1, 0), BInt.ONE)
        XCTAssertEqual(BInt.binomial(1, 1), BInt.ONE)
        XCTAssertEqual(BInt.binomial(1000, 0), BInt.ONE)
        XCTAssertEqual(BInt.binomial(1000, 1000), BInt.ONE)
        for n in 0 ... 500 {
            doTest(n)
        }
    }

}
