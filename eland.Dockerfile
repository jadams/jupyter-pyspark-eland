FROM ghcr.io/jadams/jupyter-pyspark:main

# install - requirements.txt
COPY --chown=jovyan:users eland-requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt --quiet --no-cache-dir \
 && rm -f /tmp/requirements.txt
