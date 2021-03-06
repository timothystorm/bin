#!/usr/bin/python

import csv
import socket, errno
import sys
import telnetlib

################################################################################
# firwall checker
#
# verifies if firewalls are open for host:ip by reading
# host attributes from CSV file(s).
# 
# usage: $0 [path_to_csv...]
#
# CSV format: 
# dest_host,dest_ip,dest_port
# google.com,216.58.218.142,80
#
# Author: Timothy Storm
# Date: 2017.08.23
################################################################################

class ttycolor:
  RED = '\033[91m'
  GRN = '\033[92m'
  CYN = '\033[96m'
  YEL = '\033[93m'
  END = '\033[0m'

# read 0-* csv files
for csvfile in sys.argv[1:]:
  # read lines of csv
  with open(csvfile, 'r') as f:
    reader = csv.DictReader(f)

    for row in reader:
      label='{dest_host}[{dest_ip}]:{dest_port} '.format(**row)
      tn = None

      try:
        # print label
        sys.stdout.write('{0: <73}'.format(label))
        sys.stdout.flush()

        # execute telnet
        tn = telnetlib.Telnet(row['dest_ip'], row['dest_port'], 4)

        # successfully connected
        print('[' + ttycolor.GRN + 'PASS' + ttycolor.END + ']')
      except socket.timeout:
        # fail
        print('[' + ttycolor.RED + 'FAIL' + ttycolor.END + ']')
      except socket.error as e:
        if e.errno == errno.ECONNREFUSED:
          # connection was mad but disconnected by host
          print('[' + ttycolor.CYN + 'PASS' + ttycolor.END + ']')
        elif e.errno == errno.EHOSTUNREACH:
          # host unreachable
          print('[' + ttycolor.YEL + 'NULL' + ttycolor.END + ']')
        else:
          raise
      except KeyboardInterrupt:
        print
        raise SystemExit
      finally:
        if tn != None:
          tn.close()
