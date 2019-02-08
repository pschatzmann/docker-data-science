FROM pschatzmann/beakerx-lab:1.3.0
MAINTAINER phil schatzmann
COPY plugin.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/extensionmanager-extension/
RUN npm install --save-dev webpack
RUN conda install -y -c conda-forge requests psycopg2 statsmodels cython pystan fbprophet tensorflow keras scipy scikit-learn matplotlib pillow seaborn nltk gensim quandl 
RUN conda install -c pschatzmann shogun-jvm 
RUN jupyter labextension install @jupyterlab/git @jupyterlab/github 
RUN pip install --upgrade pip && pip install jupyterlab_github calysto_prolog bash_kernel
RUN python3 -m calysto_prolog install \
 && python3 -m bash_kernel.install
RUN jupyter labextension update --all
