module Rails::ConsoleMethods
  def add_gitlab_host name:, url:, token:
    host = Host.create!(name: name, url: url, kind: "gitlab")
    REDIS.set("gitlab_token:#{host.id}", token)
    loop do
      break unless host.crawl_repositories
    end
  end
end
