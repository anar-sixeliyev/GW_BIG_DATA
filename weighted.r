g <- as.undirected(simple_email, mode = "collapse")
g_filtered = igraph::delete.vertices(g, igraph::degree(simple_email) < 5)
E(g_filtered)$weight <- runif(length(E(g_filtered)), 1, 10)
vertex_colors <- c("blue", "red", "green", "purple", "orange")
communities <- cluster_louvain(g_filtered)
V(g_filtered)$color <- vertex_colors[communities$membership]
V(g_filtered)$size <- igraph::degree(g_filtered) * 3
E(g_filtered)$color <- ifelse(E(g_filtered)$weight >= 5, "black", "gray")
E(g_filtered)$lty <- ifelse(E(g_filtered)$weight >= 5, "solid", "dashed")
plot(g_filtered, vertex.label=NA, edge.arrow.size=0.5)
