# Generate a new jekyll blog post using prompts then place it in
# the _posts folder.

puts "Enter the post title:"
title = gets.chomp

puts "Enter the date (YYYY-MM-DD):"
date = gets.chomp

puts "Enter the category:"
category = gets.chomp

dirty_slug = title.split(" ")
clean_slug = []
dirty_slug.each do |s|
  clean_slug << s.downcase
  clean_slug << "-"
end

clean_slug.pop
final_slug = clean_slug.join("")

the_post_permalink = "/#{date}/#{final_slug}/"

the_post_file_name = date.to_s + '-' + final_slug.to_s + '.md'
the_post_file = File.new("_posts/#{the_post_file_name}", 'w')
the_post_file.puts('---')
the_post_file.puts("title: \"#{title}\"")
the_post_file.puts("author: Johnathan Lyman")
the_post_file.puts('layout: post')
the_post_file.puts("permalink: #{the_post_permalink}")
the_post_file.puts('categories:')
the_post_file.puts("    - #{category}")
the_post_file.puts('---')
the_post_file.puts('')
the_post_file.close

system("atom", "_posts/#{the_post_file_name}")
