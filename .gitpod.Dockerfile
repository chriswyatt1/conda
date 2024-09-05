FROM gitpod/workspace-full:latest

# Install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda && \
    rm Miniconda3-latest-Linux-x86_64.sh && \
    $HOME/miniconda/bin/conda init && \
    ln -s $HOME/miniconda/bin/conda /usr/local/bin/conda
