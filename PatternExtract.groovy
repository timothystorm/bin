#!/usr/bin/env groovy

if(args.length < 1 || "help".equalsIgnoreCase(args[0])) {
  System.err.println("usage: patterns \"regex_pattern\"")
  System.err.println("example: cat file1.txt file2.txt | patterns \"ERROR\"")
  System.err.println("example: pattern \"ERROR\" < file.txt")

  if(args.length < 1) System.exit(-1)
  System.exit(0)
}

def scanner = new Scanner(System.in)
def pattern = ~"${args[0]}"

String match
while((match = scanner.findWithinHorizon(pattern, 0)) != null) {
  println "${match}\n"
}
