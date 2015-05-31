#!/usr/bin/env ruby
# DEVELOPED BY RITVIK CHOUDHARY
system = `uname -s`
@search = ARGV
@query = ''

case system
when 'Darwin', "Darwin\n"
  @open_command = 'open'
else
  @open_command = 'xdg-open'
end

def search_query
  @search.each do |word|
    add_to_query(word)
  end
  system "#{@open_command} https://www.google.com/search?q=\"#{@query}\""
end

def search_stack
  @search.delete(@search.first)
  @search.each do |word|
    if word == @search.last
      @query << word
    else
      @query << "#{word}+"
    end
  end
  system "#{@open_command} http://stackoverflow.com/search?q=#{@query}"
end

def search_youtube
  @search.delete(@search.first)
  @search.each do |word|
    add_to_query(word)
  end
  system "#{@open_command} https://www.youtube.com/results?search_query=\"#{@query}\""
end

def search_images
  @search.delete(@search.first)
  @search.each do |word|
    add_to_query(word)
  end
  system "#{@open_command} \"https://www.google.com/search?q=#{@query}&tbm=isch\""
end


def search_wiki
  @search.delete(@search.first)
  @search.each do |word|
    if word == @search.last
      @query << word
    else
      @query << "#{word}+"
    end
  end
  system "#{@open_command} http://www.wikipedia.org/w/index.php?search=\"#{@query}\""
end

def add_to_query(word)
  if word == @search.last
    @query << word
  else
    @query << "#{word} "
  end
end

def usage
  puts <<-USAGE
 web - The internet at the doorstep of your Command Line!

 Usage:

   web [query]
   web -i [query]
   web -yt [query]
   web -wiki/--wikipedia [query]
   web -so/--stack [query]
   

   web -h/--help

   USAGE
end

case @search.first
when '-i', '--images'
  search_images
when '-yt', '--youtube'
  search_youtube
when '-so', '--stack'
  search_stack
when '-wiki', '--wikipedia'
  search_wiki
when '-h', '--help', nil, '-'
  usage
else
  search_query
end
