#! /usr/bin/bash
read para
grep -wo "s[^a]\w*" $para
grep -wo "wh\w*" $para
grep -wo "th\w*" $para
grep -wo "a[^n]\w*" $para