# Academy project

Final project for python academy


### Deploy
```
> cd academyproject
> docker-compose build
```

### Convert Command
Command accepts one of two possible arguments - dna2rna or rna2amino. Returns required string. 
#### Syntax:
```
> docker-compose run application python manage.py convert --dna2rna=$value:str
> docker-compose run application python manage.py convert --rna2amino=$value:str 
```

### Draw Command
Requires two arguments - step and genome string. The output image will be stored in the ./images folder.
#### Syntax
```
> docker-compose run application python manage.py draw --genome=$value:str --step=$value:int 
```

### TODO:
* ~~Fix volume issue~~
* Write Unit test