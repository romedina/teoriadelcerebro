-- Install Anaconda

1. Open an Anaconda prompt

-- CREATE ENVIRONMENT/WORKSPACE FOR PYTHON 3.5:

1. conda create --name brain python=3.5
2. activate brain
 
-- INSTALL EVERYTHING (notice the neuralnets workspace in parenthesis on each line). ACCEPT ANY DEPENDENCIES EACH OF THOSE STEPS WANTS TO INSTALL:
1. conda install theano
2. conda install mingw libpython
3. pip install tensorflow
4. conda install --channel https://conda.anaconda.org/conda-forge keras
5. conda install jupyter
6. conda install matplotlib
7. conda install --force html5lib 
8. conda install pandas

-- TEST IT OUT:
python -c "from keras import backend; print(backend._BACKEND)"
 
jupyter notebook

-- Execute Tensorboard

tensorboard --logdir=mnist_tutorial/