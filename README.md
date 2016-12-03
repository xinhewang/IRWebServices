#### API to get a nouns from a sentence using nltk package in python

##### build up the docker image and run in the docker container
```
docker build -t app .
docker run -t -p 8888:8888 app
```
##### api is ready in port 8888

api: <ipaddress>:8888/api/getnouns

expected request: 
```
{
    "sentence":"Lets go to Boiling Point"
}
```

response:
```
{"terms": ["BoilingPoint"]}
```
