email_list <- read.table("~/Desktop/GW_BIG_DATA/email-EuAll.txt")
email_graph = graph_from_data_frame(email_list , directed=TRUE)



g = delete.vertices(simp_email_graph, degree(simp_email_graph)<20)
g = igraph::delete.vertices(g, igraph::degree(g)==0)