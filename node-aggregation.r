clusters = cluster_louvain(as.undirected(reduced_email), resolution=1.5)
email_cluster <- simplify(contract.vertices(reduced_email, membership(clusters)))
aggregated_graph = igraph::delete.vertices(email_cluster, igraph::degree(email_cluster)==0)
plot(aggregated_graph, vertex.color = clusters$membership, vertex.label = NA, edge.arrow.size=0.3, vertex.size=15)