g = Koala::Facebook::API.new "CAAXAfIzYet8BAJF9dL42CfRlENBBWMFHZB1q7sxUBg8T2Xkzh1I70l7LuxEe8FPZAhSzQlk3jstWVpN1ySIojde8fjxE1RP2ACtGIhHAgdFpXwgsHlrhawXUGCJZAP732ngFbLlqZBYIixIXl2Rq274yrFl0G4fhXjfClGWIZAUvf3zmf9Ub3IRPLwRdGwXUbN8FpYl7ayAZDZD"

profile = g.get_object("me")
g.get_connections("me", "friends")
feed = g.get_connections("me", "feed")


Tweet.all.each do |t|
end
