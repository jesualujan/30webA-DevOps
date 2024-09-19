const express = require('express')
const app = express()

// REQUEST
app.get('/', (req , res) => {
	res.send('<h2> FUNCIONA 🐳</h2>')
})

const port = process.env.PORT || 3000

app.listen (port, () => 
 console.log('server listening on port: ', `http://localhost:${port}`)
 )
