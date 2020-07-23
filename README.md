# edu-nim

Nim Programming Language Learning Pathway

- [https://nim-lang.org/docs/tut1.html]

 Compile / Run
--------------
        `nim compile --run greetings.nim`
        `nim c -r greetings.nim`

 Release
--------------
        `nim c -d:release greetings.nim`

 Args
--------------
        `nim compile --run greetings.nim arg1 arg2`

 String Literals
 ----------------
String literals are enclosed in double quotes; character literals in single quotes. Special characters are escaped with \: \n means newline, \t means tabulator, etc. There are also raw string literals:
`r"C:\program files\nim"`
In raw literals the backslash is not an escape character.
The third and last way to write string literals are long string literals. They are written with three quotes: """ ... """; they can span over multiple lines and the \ is not an escape character either. They are very useful for embedding HTML code templates for example.