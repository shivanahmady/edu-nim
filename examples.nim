#[
You can have any Nim code text commented
out inside this with no indentation restrictions.
      yes("May I ask a pointless question?")
  #[
     Note: these can be nested!!

String literals are enclosed in double quotes; character literals in single quotes. Special characters are escaped with \: \n means newline, \t means tabulator, etc. There are also raw string literals:

r"C:\program files\nim"
In raw literals the backslash is not an escape character.

The third and last way to write string literals are long string literals. They are written with three quotes: """ ... """; they can span over multiple lines and the \ is not an escape character either. They are very useful for embedding HTML code templates for example.
  ]#
]#



# This is a comment
echo "What's your name? "
let name: string = readLine(stdin)
if name == "":
  echo "Poor soul, you lost your name?"
elif name == "name":
  echo "Very funny, your name is name."
else:
  echo "Hi, ", name, "!"


echo "What's your name? "
var name = readLine(stdin)
while name == "":
  echo "Come on tell me your name: "
  name = readLine(stdin)
  # no ``var``, because we do not declare a new variable here


echo "Counting to 10: "
var i = 1
while i <= 10:
  echo i
  inc(i) # increment i by 1
# --> Outputs 1 2 3 4 5 6 7 8 9 10 on different lines
