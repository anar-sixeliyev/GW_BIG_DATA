simple_email = simplify(email_graph)
is_simple(simple_email)

reduced_email = igraph::delete.vertices(simple_email, igraph::degree(simple_email) < 5)
reduced_email =  igraph::delete.vertices(reduced_email,  igraph::degree(reduced_email) == 0)