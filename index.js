const http = require('http')
const moment = require('moment')

const summer = moment('2018-06-21')

const server = http.createServer((req, res) => {
  const timeToSummer = moment.duration(summer.diff(moment())).as('days')
  res.setHeader('Content-Type', 'text/html')
  res.write(`<html>
  <body>
    <h1>Hello from Node!</h1>
    <h2>Summer is coming in ${timeToSummer} days!</h2>
  </body>
  </html>`)
  res.end()
})

server.listen(process.env.PORT || 8080)

process.on('SIGINT', function() {
  process.exit()
})
