clusters = cluster_louvain(as.undirected(reduced_email), resolution=10)
email_cluster <- simplify(contract.vertices(reduced_email, membership(clusters)))
aggregated_graph = delete.vertices(email_cluster, degree(email_cluster)==0)

# finding the communities
wc < -walktrap.community(aggregated_graph)

# plot communities
plot(wc, aggregated_graph, vertex.size=0.5, layout=layout.fruchterman.reingold, vertex.label=NA, edge.arrow.size=0.1)


# plot clusters only
plot(aggregated_graph, vertex.color = clusters$membership, vertex.label = NA, edge.arrow.size=0.3, vertex.size=15)
