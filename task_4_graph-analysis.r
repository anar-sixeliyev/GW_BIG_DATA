# mst

# setting weight from normal distribution
E(aggregated_graph)$weight <- rnorm(ecount(aggregated_graph))
V(aggregated_graph)$weight <- rnorm(vcount(aggregated_graph))

sg <- induced.subgraph(aggregated_graph, which(V(aggregated_graph)$weight > 1.05))

# calculate mst
mst <- mst(sg)

# plot mst
plot(mst, layout = layout_nicely(mst), vertex.label=NA)


# eigenvector_centrality
ec <- igraph::evcent(reduced_email)
plot(reduced_email, vertex.color=ec$vector,vertex.size=30*ec$vector,vertex.label=NA, layout=layout.circle)

# summary
summary(reduced_email)


# layout_with_kk
layout <- layout_with_kk(aggregated_graph, dim=2, kkconst=1)
plot(aggregated_graph, layout=layout, vertex.label=NA, edge.arrow.size=0.5)


# transitivity
transitivity(reduced_email)

# triangles
triangles(reduced_email)

# isomorphic
isomorphic(email_graph, reduced_email)

# mean_distance
mean_distance(reduced_email)

# automorphisms
count_automorphisms(reduced_email)
