//
//  SQLDryRun.swift
//  FluentSQLi
//
//  Created by C0deH4cker on 2/18/16.
//  Copyright © 2016 C0deH4cker. All rights reserved.
//

import Fluent

class SQLLogging {
	init() {
		print("Database created")
	}
	
	func close() {
		print("Database closed")
	}
	
	class Result {
		class Row {
			var data: [String: String]
			
			init() {
				self.data = [:]
			}
		}
		
		var rows: [Row]
		
		init() {
			self.rows = []
		}
	}
	
	
	func execute(statement: String) -> [Result.Row] {
		return []
	}
}
