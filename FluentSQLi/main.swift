//
//  main.swift
//  FluentSQLi
//
//  Created by C0deH4cker on 2/18/16.
//  Copyright © 2016 C0deH4cker. All rights reserved.
//

#if os(Linux)
	import Glibc
#else
	import Darwin.C
#endif

import Fluent

Database.driver = SQLDryRunDriver()

while true {
	print("Enter a username to lookup:")
	guard let username = readLine(stripNewline: true) else {
		break
	}
	
	if let user = Query<User>().filter("username", username).first {
		print("User \(username) exists!")
	}
	else {
		let user = User(name: username)
		user.save()
		print("Created user \(username)!")
	}
}
