AlchemyAPI.key = "4bfd1682046878609eebecbc15d47ce97948910b"


results = AlchemyAPI.search(:keyword_extraction, text: "hello world")
results = AlchemyAPI::KeywordExtraction.new.search(url: 'http://www.alchemyapi.com/')
results = AlchemyAPI.search(:sentiment_analysis, text: "hello world")

results = AlchemyAPI::SentimentAnalysis.new.search(html:

#.sentiment_analysis(html: "<html><body>lorem ipsum</body></html>")

Tweet.where("sentiment is null").each do |t|
  puts t.text

  results = AlchemyAPI.search(:sentiment_analysis, text: t.text)
  t.sentiment = results
  puts results.inspect
  t.save
end

