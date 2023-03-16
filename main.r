library(igraph)
library(sna)
email_list <- read.table("~/Desktop/GW_BIG_DATA/email-EuAll.txt")
email_graph = graph_from_data_frame(email_list , directed=TRUE)

#vcount(email_graph)
#ecount(email_graph)

simple_email = simplify(email_graph)
is_simple(simple_email)

reduced_email = igraph::delete.vertices(simple_email, igraph::degree(simple_email) < 5)
reduced_email =  igraph::delete.vertices(reduced_email,  igraph::degree(reduced_email) == 0)
vcount(reduced_email)
ecount(reduced_email)

# my_undirected_graph <- as.undirected(reduced_email, mode = "collapse")
# communities <- cluster_louvain(my_undirected_graph, resolution = 0)
# for (i in 1:max(membership(communities))) {
#     subg <- induced_subgraph(my_undirected_graph, which(membership(communities) == i))
#     plot(subg, main = paste0("Cluster ", i))
# }


clusters = cluster_louvain(as.undirected(reduced_email), resolution=1.5)
email_cluster <- simplify(contract.vertices(reduced_email, membership(clusters)))
aggregated_graph = igraph::delete.vertices(email_cluster, igraph::degree(email_cluster)==0)
plot(aggregated_graph, vertex.color = clusters$membership, vertex.label = NA, edge.arrow.size=0.3, vertex.size=15)