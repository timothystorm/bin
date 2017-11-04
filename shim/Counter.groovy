#!/usr/bin/env groovy

/* creates a firewall list by providing the beginning port and ending port.
   the range of ports is used to construct a list of address with incremnted
   ports
*/

// dest_host,dest_ip,dest_port
if(args.length < 4) {
  System.err.println("usage: Counter.groovy host ip standalone_port start_port end_port")
  System.exit(-1)
}

println "${args[0]},${args[1]},${args[2]}"

Long start = args[3] as Long
Long end = args[4] as Long
for(i in (start..end)) {
  println "${args[0]},${args[1]},${i}"
}
