FROM pschatzmann/beakerx-lab:1.2.0
MAINTAINER phil schatzmann
RUN conda install -y -c conda-forge requests psycopg2 statsmodels cython pystan fbprophet tensorflow keras scipy scikit-learn matplotlib pillow seaborn nltk gensim quandl 
RUN conda install -c pschatzmann shogun-jvm 
# Prolog & bash Kernel
RUN	pip install calysto_prolog bash_kernel \
 && python3 -m calysto_prolog install \
 && python3 -m bash_kernel.install
RUN jupyter labextension install @jupyterlab/git @jupyterlab/github @jupyterlab/statusbar @ijmbarr/jupyterlab_spellchecker
RUN pip install --upgrade pip && pip install jupyterlab_github
COPY plugin.jupyterlab-settings root/.jupyter/lab/user-settings/@jupyterlab/extensionmanager-extension/

