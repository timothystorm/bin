#!/usr/bin/env groovy

/* 
  Joinx 1 primary data set with 0* data sets.  
  Removes duplicate lines automatically.
  Good for small data sets.

  Usage: Join.groovy primary_file [nth_file...]
*/

if(args.length < 1) {
  System.err.println("usage: Inner.groovy primary_file [nth_file...]")
  System.exit(-1)
}

// load data (lines) into a file and add it to the files list
def lists = []
args.each{ path ->
  def data = []
  new File(path).eachLine{ line -> data << line }
  lists << data
}

// pop the a list
def a = lists.remove(0)

// join the b lists
if(lists.size() > 0) {
  def b = []
  lists.each{ data -> b += data }

  // retain intersection of 'a' and 'b'
  a.retainAll(b)
}

println(a)
