# Academy project

Final project for python academy


### Deploy
```
> docker-compose build
> docker-compose up -d db # postgresql should be always up
```

### Execution
```
> docker run --env .env --network $network_name academyproject_application python manage.py $cmd
```

### Command List:
```
> convert --dna2rna=$genome-string
> convert --rna2amino=$genome-string
> draw --genome=$genome-string --step=$step
```


### TODO:
1. Fix volume issue
2. Write Unit test