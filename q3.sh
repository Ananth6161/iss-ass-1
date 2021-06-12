#! /usr/bin/bash
$1
grep -wo "s[^a]\w*" $1
grep -wo "wh\w*" $1
grep -wo "th\w*" $1
grep -wo "a[^n]\w*" $1