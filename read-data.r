library(igraph)
library(sna)
email_list <- read.table("~/Desktop/GW_BIG_DATA/email-EuAll.txt")
email_graph = graph_from_data_frame(email_list , directed=TRUE)