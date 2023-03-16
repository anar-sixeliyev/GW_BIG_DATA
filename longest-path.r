diameter <- get_diameter(reduced_email)
diameter_vertices <- unlist(diameter)
subgraph <- induced_subgraph(reduced_email, diameter_vertices)
plot(subgraph, edge.arrow.size=0.3)