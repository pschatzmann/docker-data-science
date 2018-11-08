FROM pschatzmann/beakerx-lab:1.2.0
MAINTAINER phil schatzmann
RUN conda install -y -c conda-forge requests psycopg2 statsmodels cython pystan fbprophet tensorflow keras scipy scikit-learn matplotlib pillow seaborn nltk gensim shogun
# Prolog & bash Kernel
RUN	pip install calysto_prolog bash_kernel \
 && python3 -m calysto_prolog install \
 && python3 -m bash_kernel.install
