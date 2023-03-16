# pow_cent
pow_cent = power_centrality(reduced_email, exponent = 2)

# plotting the distribution
hist(pow_cent, breaks = 30, col = "skyblue", main='Histogram of power centrality')
print(median(pow_cent))

# selecting top 5 values
sort(pow_cent, decreasing = TRUE)[1:5]i
