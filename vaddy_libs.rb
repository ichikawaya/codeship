def build_query(query_hash = {})
    query_string = (query_hash||{}).map{|k,v|
          URI.encode(k.to_s) + "=" + URI.encode(v.to_s)
          }.join("&")
    return query_string 
end
