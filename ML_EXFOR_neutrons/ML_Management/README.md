# Comet ML and WandB Scripts

<a src="https://www.comet.ml/">Comet ML</a> and <a src="https://www.wandb.com/">WandB</a> are both ML experiment management tools. This directory neural network training scripts that logs a variety of metrics to both these tools. Feel free to re-use some of these scripts, notice you will need to create your own accounts and replace the API keys in the scripts.


## Directory Description

- `cometOptimizer`: this directory contains scripts that only utilizes Comet ML `Optimizer` module using bayesian search.
- `wandbSweeps`: this directory contains scripts that only utilizes Wandb `Sweeps` module using bayesian search.
- `wandbCometHybrid`: this directory contains scripts that utilizes Comet ML `Optimizer` module using bayesian search. The parameters are logged also to WandB but the bayesian engine employed is that from Comet ML. 