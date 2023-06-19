WORKDIR $THEIA_WORKSPACE_ROOT

COPY repos-to-clone.list .
COPY clone-repos.sh .

RUN bash clone-repos.sh