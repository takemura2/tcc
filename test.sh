#!/bin/bash
try() {
  expected="$1"
  input="$2"

  ./tcc "$input" > tmp.s
  gcc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" != "$expected" ]; then
    echo "$input expected, but got $actual"
    exit 1
  fi
}

try 7 5+2
try 3 10-7

echo OK
