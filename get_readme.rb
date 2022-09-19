require "json"
require "open-uri"
require "fileutils"


source = File.join(File.dirname(__FILE__), "repositories.json")
repositories = JSON.parse(File.read(source))
repositories.each do |repository|
  title = repository["title"]
  repository_url = repository["repository_url"] || "https://github.com/avidit/#{title}"
  readme_url = repository["readme_url"] || "https://raw.githubusercontent.com/avidit/#{title}/master/README.md"
  layout = repository["layout"] || "project"
  front_matter = "---\nlayout: #{layout}\ntitle: #{title}\nrepository_url: #{repository_url}\n---\n\n"

  dir = "_projects"
  file = title == "resume" ? "resume.md" : "#{dir}/#{title}.md"

  begin
    data = front_matter + URI.open(readme_url).read
  rescue Exception => e
    data = front_matter
  end

  FileUtils.mkdir_p(dir)
  File.open(file, "w") { |file| file.write(data) }
end
