require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "mV5cccrboEudma5VjdZyv0YTn"
  config.consumer_secret     = "4xpcOQUlTu9HCLr8shHMmUHGF9oLbausE8NJZdNI4LBvuZeFGc"
  config.access_token        = "26647788-DnMHBhvBwFK9Kqt618mcMlBUavVIalDj95SgLTXFU"
  config.access_token_secret = "fQc999IMvAMuF8EyUBuu894Ju5jQAEA9nLo8QHm4NB9xp"
end

#max = Post.maximum :origin_id
tl = client.home_timeline count: 200
#, since_id: max

tl.each do |t|
  user_id = "twitter_user_#{t.user.id}"
  user = User.find_by_id(user_id)
  unless user
    tu = t.user
    user = User.create(
      id: user_id,
      name: tu.name,
      data: tu.attrs
    )
  end

  Post.create id: "twitter_post_#{t.id}", user_id: user_id, data: t.attrs
end

txts = Tweet.all.map &:text
links = txts.map{|t| t.scan /t\.co\/\w+/ }.flatten
