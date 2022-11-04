atom_feed do |feed|
  feed.title("Articles Index")
  feed.updated(@products.first.created_at)

  @products.each do |article|
    feed.entry(article) do |entry|

    end
  end
end