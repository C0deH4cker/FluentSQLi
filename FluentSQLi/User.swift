//
//  User.swift
//  FluentSQLi
//
//  Created by C0deH4cker on 2/18/16.
//  Copyright © 2016 C0deH4cker. All rights reserved.
//

import Fluent

class User: Model {
	var id: String?
	var name: String
	
	init(name: String) {
		self.name = name
	}
	
	func serialize() -> [String: String] {
		return [
			"name": self.name,
		]
	}
	
	class var table: String {
		return "users"
	}
	
	required init(serialized: [String: String]) {
		self.id = serialized["id"]
		self.name = serialized["name"] ?? ""
	}
}
