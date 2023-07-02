# Jerry package

This package was created to work in tandum with NetworkX graph objects. The main goal of the package was to give a faster way to run a randomized Kruskal algorithm on NetworkX objects. With the implementations that we have here, we see ~5-6x speed improvement over the native NetworkX method. More methods will be added at a later date.

## Installation
This package is available through pip for most python distributions and platforms. Installation is as simple as typing
```
pip install jerrymander
```
for most systems or 
```
pip3 install jerrymander
```
if you have multiple versions of python installed.

## Usage
You can see an example case of usage in this project in the file `test.ipynb`, but the basic usage is pretty simple. The only method that is currently available is the randomized Kruskal method, which can be called in the following way:

```
# Include the module jerry. This module only has the randomized kruskal method right now
import jerry 
import networkx as nx


graph = nx.grid_graph(dim=(5,5)) # create a 5x5 grid graph

node_list = list(graph.nodes())
edge_list = list(graph.edges())

# The randomized kruskal method takes in two parameters: the edge list and the total number of nodes
# it will then return a list of pairs of pairs that represent an edge list.
result = jerry.rand_kruskal(edge_list, len(node_list))

G = nx.from_edgelist(result)
```
And should you choose to visualize this, you will get something like

![alt text](./docs/example_run.png "Example Run Randomized Kruskal")