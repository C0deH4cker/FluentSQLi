To run:

```
swift build
.build/debug/FluentSQLi
```


Example run:

```
Database created
Enter a username to lookup:
hello' or 1=1;--
[SQL] SELECT * FROM `users` WHERE  `username` = 'hello' or 1=1;--' LIMIT 1
[SQL] INSERT INTO `users` (`name`) VALUES ('hello' or 1=1;--')
Created user hello' or 1=1;--!
```
