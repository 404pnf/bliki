# This filter only modifies posts.
class Post
  def plugin_talk_like_a_pirate content
    return content unless Sinatra::Application.talk_like_a_pirate
    content.gsub!(/This is a/,"Arr, tis' a")
    content.gsub!(/ a /," ye olde ")
  end
end