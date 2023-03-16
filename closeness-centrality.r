reduced_email_closeness <- centr_clo(reduced_email)
if (any(!is.na(reduced_email_closeness$res))) {
    node_size <- 20 * reduced_email_closeness$res
    node_size[is.nan(node_size)] <- 0  # set NaN values to 0
} else {
    node_size <- rep(0, vcount(reduced_email))
}
plot(reduced_email, vertex.size = node_size, vertex.color = "red", vertex.label = NA, edge.arrow.size=0.3)