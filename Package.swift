//
//  Package.swift
//  FluentSQLi
//
//  Created by C0deH4cker on 2/18/16.
//  Copyright © 2016 C0deH4cker. All rights reserved.
//

import PackageDescription

let package = Package(
	name: "FluentSQLi",
	dependencies: [
		.Package(url: "https://github.com/tannernelson/fluent.git", majorVersion: 0)
	]
)