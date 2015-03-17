Post models                      posts table
  -title
  -body

comments                         comments table
  -name
  -body  

post.create
post.destroy
post.comments 

//The above what models do for us, rather than this SQL language:
--SELECT * FROM post LEFT JOIN comments ON comments.post_id = post.id 