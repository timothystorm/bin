#!/usr/bin/env groovy

if(args.length < 1 || "help".equalsIgnoreCase(args[0])) {
  if(args.length < 1) System.exit(-1)
  System.exit(0)
}

def scanner = new Scanner(System.in)
def pattern = ~"(?m)${args[0]}"

String match
while((match = scanner.findWithinHorizon(pattern, 0)) != null) {
  println "${match}\n"
}

//System.in.eachLine() { line ->  
//  println "$line"  
//}  
