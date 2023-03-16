reduced_email.betweenness <- centr_betw(reduced_email)
node_size <- 100 * reduced_email.betweenness$res / max(reduced_email.betweenness$res)
plot(reduced_email, vertex.size = node_size, vertex.color = "blue", vertex.label = NA, edge.arrow.size=0.3)