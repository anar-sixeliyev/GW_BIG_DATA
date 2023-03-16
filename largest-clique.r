cliques <- max_cliques(reduced_email)
largest_clique <- cliques[[which.max(lengths(cliques))]]
subgraph <- induced_subgraph(reduced_email, largest_clique)
plot(subgraph, edge.arrow.size=0.3)