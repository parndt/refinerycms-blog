Refinery::Plugin.register do |plugin|
  plugin.title = "Blog"
  plugin.name = "blog"
  plugin.description = "Manage Blog"
  plugin.version = 1.0
  plugin.menu_match = /admin\/(blog|comments|blog_comments)/
  plugin.activity = {
    :class => Blog,
    :url_prefix => "edit",
    :title => 'title'
  }
end

