# ORIENTATION

In case one needs orienting..

```
  coai/chat <-- cli chat perl program
  coai/regress/0.query <--- 1st 'saved/repeated' query
  coai/regress/0.1/0.result <-- 'temperature' 0.1 result from 0.query
  coai/regress/0.5/1.result <-- 'temperature' 0.5 result from 1.query
  coai/regress/0.9/5.result <-- 'temperature' 0.9 result from 5.query
  ..etc..
  coai/regress/Makefile <-- my 'automation'
```

If I do the following:

```
  cd coai/regress
  touch Makefile
  make -j3 results
```

I get all results updated in 3 parallel queries.

If I do the following:

```
  git diff | ixio
  alias | grep ixio
```

I get the following:

```
  http://ix.io/4olD
  ixio='curl -F '\''f:l=<-'\'' ix.io'
```

Just to be perfectly transparent ;-)
