# Versioning APIs

Using API constraints to version APIs. This implementation is based on the idea that resource URIs that API users depend on should be permalinks.
Instead of specifying the API version in the URI, it is specified in the HTTP Accept header.

Example:

  $ curl -H "accept: application/json; version=1" http://example.com/posts


Here are some links with more information:

http://blog.steveklabnik.com/posts/2011-07-03-nobody-understands-rest-or-http#i_want_my_api_to_be_versioned

http://www.bignerdranch.com/blog/adding-versions-rails-api/