xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title RefinerySetting.find_or_set(:site_name, "Company Name")
    xml.description RefinerySetting.find_or_set(:site_name, "Company Name") + " Blog"
    xml.link blog_url

    for post in @blogs
      xml.item do
        xml.title post.title
        xml.description post.body
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link blog_post_url(post.permalink)
      end
    end
  end
end