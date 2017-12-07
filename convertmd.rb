require 'erb'
require 'date'
require 'redcarpet'
  erb_file_main = 'index.html.erb'
  html_file_main = File.basename(erb_file_main, '.erb')
  erb_str_main = File.read(erb_file_main)
  @current_time = Time.now 
  mdFile = Dir.entries("./filemarkdown/").select {|f| !File.directory? f}
  arr = mdFile.sort 
  renderer = Redcarpet::Render::HTML
  markdown = Redcarpet::Markdown.new(renderer,:highlight => true,quote: true, autolink:true,tables: true, strikethrough: true,fenced_code_blocks: true)
  for i in 0..arr.length-1
    erb_file_content = 'content.html.erb'
    html_file_content1 = File.basename(arr[i], 'md')  
    html_file_content = File.basename(html_file_content1+"html") 
    erb_str_content = File.read(erb_file_content)
    result_content = ERB.new(erb_str_content).result()
    File.open(html_file_content, 'w') do |f|
      f.write(result_content) 
    end
  end
  result_main = ERB.new(erb_str_main).result()
  File.open(html_file_main, 'w') do |f|
    f.write(result_main)
  end