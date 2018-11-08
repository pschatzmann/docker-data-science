FROM pschatzmann/beakerx-lab:1.2.0
MAINTAINER phil schatzmann
RUN conda install -y -c conda-forge requests psycopg2 statsmodels cython pystan fbprophet tensorflow keras scipy scikit-learn matplotlib pillow seaborn nltk gensim shogun
