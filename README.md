# Shift_JIS_ruby
Shift_JISなソースコードをGitHubに上げたらどーなるの！？

```
$ ruby -Ks gen_sjis.rb
$ ls
gen_sjis.rb    items_sjis.csv
$ nkf --guess gen_sjis.rb
Shift_JIS (CRLF)
$ nkf --guess items_sjis.csv
Shift_JIS (LF)
```
