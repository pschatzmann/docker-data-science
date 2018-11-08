# data-science
Dockerfile for Jupyter Lab (with BeakerX) and the most important Data Science Libraries 

##  GUI
- jupyterlab

##  Languages
- python 
- scala 
- java 
- kotlin
- groovy
- clojure
- bash
- prolog
- SQL
- javascript

## Library Managers
- anaconda
- pip
- maven

## Core Python Libraries.
- NumPy
- SciPy
- statsmodels
- Pandas
- psycopg2

## Visualization
- Matplotlib
- Seaborn

## Machine Learning.
- SciKit-Learn
- Keras
- TensorFlow
- Shogun

## Natural Language Processing.
- nltk
- gensim

## Data Sources
- quandl


# Docker Compose
We currently use the following docker-compose file.
The volume mapping makes sure that we do not loose any jupyter workbooks.

	version: '3.1'
	services:
	  data-science:
		image: pschatzmann/data-science
		container_name: data-science
		restart: always
		ports:
		  - 8000:8888
		volumes:
		  - /srv/data-science:/home/beakerx
