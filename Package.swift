// swift-tools-version:5.1

//
//  SQLCipher
//
//  Copyright (c) 2020 Wellington Marthas
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import PackageDescription

let package = Package(
    name: "SQLCipher",
    platforms: [
        .macOS(.v10_14), .iOS(.v12)
    ],
    products: [
        .library(
            name: "SQLCipher",
            type: .static,
            targets: ["SQLCipher"])
    ],
    targets: [
        .target(
            name: "SQLCipher",
            path: "Sources",
            cSettings: [
                .define("SQLITE_HAS_CODEC", to: "1"),
                .define("SQLITE_TEMP_STORE", to: "3"),
                .define("SQLCIPHER_CRYPTO_CC", to: nil),
                .define("NDEBUG", to: "1")
            ],
            swiftSettings: [
                .define("SQLITE_HAS_CODEC")
            ]
        )
    ]
)
