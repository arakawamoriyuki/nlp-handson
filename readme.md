
# nlp-handson

1. docker -> preference -> advanced memory -> 3G

2. run jupyter notebook

```
$ docker build -t nlp-handson .
$ docker run --rm -it -m 3G -p 8888:8888 -p 8500:8500 -v "$(pwd):/home/user" nlp-handson
```

```
$ open http://localhost:8888
```

3. embedding universal sentence encoder using keras and training on natural language classification

main.ipynb shift + enter...

4. run RestFul API server using tensorflow serving

serving.ipynb shift + enter...

5. request to serving api

client.ipynb shift + enter...
