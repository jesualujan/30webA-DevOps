const express = require ('express')
const app = express

const port = process.env.PORT || 3001

//request 
app.get('/', (req, res) =>{
     res.send('<h2> KATA DEVOPS 🐳 </h2>')
})

app.listen(port, () => {
    console.log('server listening on port: ', `http://localhost:${port}`)
})