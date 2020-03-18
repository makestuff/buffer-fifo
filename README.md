## Buffer FIFO
You can git submodule this repo to provide a generic single-clock FIFO with configurable thresholds.

**Dependencies:** [`makestuff:altera-libs`](https://github.com/makestuff/altera-libs)

See [BuildInfra](https://github.com/makestuff/ws-tools/blob/master/README.md) for details of how to incorporate this into your project.

You can install it in a new workspace `$HOME/my-workspace` like this:

    cd $HOME
    export ALTERA=/usr/local/altera-16.1  # or wherever
    mkws.sh my-workspace makestuff:{altera-libs,buffer-fifo}
    export PROJ_HOME=$HOME/my-workspace

Then assuming you have ModelSim in your `PATH`, you can run the tests:

    make -C $PROJ_HOME/ip test
