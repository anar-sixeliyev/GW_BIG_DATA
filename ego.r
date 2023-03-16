# ego sizes
ego_net <- ego(reduced_email, nodes = V(reduced_email), mode = "out")
ego_sizes <- sapply(ego_net, function(x) length(x) - 1)

# plotting the distribution
hist(log(ego_sizes), breaks = 100, col = "skyblue", main = "Histogram of ego sizes in log based")
