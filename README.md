# Academy project

_Final project for [QPA](https://www.quantori.com/academy)_. The aim of the project was to develop command line application which performs two commands:
* 1st: convert dna sequence to rna or rna to amino acid
* 2nd: draw plot of C-G relation of given genome sequence

### Tools used:
* PostgreSQL
* SQLAlchemy
* Matplotlib & Numpy
* Docker

### Project Layout
* **/**
  * **data/**
    * **db.py** - contains several sqlalchemy objects to work with db 
    * **relations.py** - functions which convert sql data to python's dicts
    * **schemes.py** - sql models 
  * **cli.py** - command line parser & utils to work with cli
  * **config.py** - project variables
  * **genome.py** - stores functions which convert genome 
  * **plot.py** - stores function to draw C-G relation of genome


### Build
In the project root dir run:
```
docker-compose build
docker-compose up # initial run, data will be inserted into db
```

### Convert Command
Command accepts one of two possible arguments - dna2rna or rna2amino. Returns required string. 
#### Syntax:
```
docker-compose run application python manage.py convert --dna2rna=$value:str
docker-compose run application python manage.py convert --rna2amino=$value:str 
```

### Draw Command
Requires two arguments - step and genome string. The output image will be stored in the ./images folder.
#### Syntax
```
docker-compose run application python manage.py draw --genome=$value:str --step=$value:int 
```

### Testing
Simply run the unittest module in the project root dir.
```
chmod 327 images # RUN AS ROOT: allow writing files to the volume on *nix OS 
python -m unittest discover test # in the root dir
```

### TODO:
* ~~more info about project in README.md~~
* add docstrings 
* ~~fix infinite Docker startup (convert command)~~
