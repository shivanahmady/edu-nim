# This is a comment
when system.hostOS == "windows":
  echo "running on Windows!"
elif system.hostOS == "linux":
  echo "running on Linux!"
elif system.hostOS == "macosx":
  echo "running on Mac OS X!"
else:
  echo "unknown operating system"



block greeting:
    echo "-------------------------\nHello."
    var greet = "What's your name?"
    echo greet
    var name = readLine(stdin)
    while name == "":
        name = readLine(stdin)
    echo "Welcome, ", name
    echo "--------------------------\n"



proc yes_when_asked(question: string): bool =
  echo question, " (y/n)"
  while true:
    case readLine(stdin)
    of "y", "Y", "yes", "Yes": return true
    of "n", "N", "no", "No": return false
    else: echo "Please be clear: yes or no"

if yes_when_asked("Should I delete all your important files?"):
  echo "I'm sorry Dave, I'm afraid I can't do that."
else:
  echo "I think you know what the problem is just as well as I do."


proc sumTillNegative(x: varargs[int]): int =
  for i in x:
    if i < 0:
      return
    result = result + i

block sumsim:
    echo "\n--------------------------"
    echo sumTillNegative() # echos 0
    echo sumTillNegative(3, 4, 5) # echos 12
    echo sumTillNegative(3, 4 , -1 , 6) # echos 7
    echo "--------------------------\n"


discard yes_when_asked("May I ask a pointless question?")
