# InterestGraph

Ruby Client for [Prismatic Interest Graph
API](https://github.com/Prismatic/interest-graph#tag-url-with-interests)

Read about [Alpha Release of Prismatic Interest
Graph](http://blog.getprismatic.com/interest-graph-api/)


## Usage
```
  client = IntesrestGraph::Client.new(`your_api_token`)
  url = 'http%3A%2F%2Fen.wikipedia.org%2Fwiki%2FMachine_learning'
  client.topics(url)
```

## Development

**Looking for contributors and collaborators**

The API is still in early stage, and so is the Ruby client Gem, if you
want to get involved working on the client, feel free to contact me
shen.marshall@gmail.com

