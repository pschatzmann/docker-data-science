# data-science
Dockerfile for Jupyter Lab

#  GUI
- jupyterlab

#  Languages
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

# Library Managers
- anaconda
- pip
- maven

# Core Python Libraries.
- NumPy
- SciPy
- statsmodels
- Pandas
- psycopg2

# Visualization
- Matplotlib
- Seaborn

# Machine Learning.
- SciKit-Learn
- Keras
- TensorFlow

# Natural Language Processing.
- nltk
- gensim


# Docker Compose
We currently use the following docker-compose file.
The volume mapping makes sure that we do not loose any jupyter workbooks.

	version: '3.0'
	services:
	  data-science:
		image: pschatzmann/data-science
		container_name: data-science
		restart: always
		ports:
		  - 8004:8888
		volumes:
		  - /srv/data-science:/home/beakerx
