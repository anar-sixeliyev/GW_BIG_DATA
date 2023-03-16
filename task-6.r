
# setting weight from normal distribution
E(aggregated_graph)$weight <- rnorm(ecount(aggregated_graph))
V(aggregated_graph)$weight <- rnorm(vcount(aggregated_graph))

# filtering based on the weight
sg <- induced.subgraph(aggregated_graph, which(V(aggregated_graph)$weight > 1.05))

E(sg)$weight <- 1

# find communities
wc <- walktrap.community(sg)

# plot the communities
plot(wc, sg, vertex.size=10, layout=layout.fruchterman.reingold, vertex.label=NA, edge.arrow.size=0.1)
