const express = require('express')
const bodyParser = require('body-parser')

const error = false


let id = 1

// source: Wikipedia
let books = [{
    id: id++,
    name: 'The Catcher in the Rye',
    description: '**The Catcher in the Rye** is a story by [J. D. Salinger](https://en.wikipedia.org/wiki/J._D._Salinger), partially published in serial form in 1945–1946 and as a novel in 1951. It was originally published for adults but has become popular among adolescent readers for its themes of angst and alienation, and as a critique on superficiality in society. It has been translated into almost all of the world\'s major languages. Around one million copies are sold each year, with total sales of more than 65 million books. The novel\'s protagonist Holden Caulfield has become an icon for teenage rebellion. The novel also deals with complex issues of innocence, identity, belonging, loss, and connection.'
},{
    id: id++,
    name: 'Of Mice and Men',
    description: '**Of Mice and Men** is a novella written by author [John Steinbeck](https://en.wikipedia.org/wiki/John_Steinbeck). Published in 1937, it tells the story of George Milton and Lennie Small, two displaced migrant ranch workers, who move from place to place in California in search of new job opportunities during the Great Depression in the United States.'
}]

const app = express()

app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*')
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept')
    res.header('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS')
    next()
})

app.use((req, res, next) => {
    if (error && req.method !== 'OPTIONS') {
        res.status(400).send()
    } else {
        next()
    }
})

app.use(bodyParser.json())

app.get('/books', (req, res) => {
    res.send(books.map(b => ({ id: b.id, name: b.name })))
})

app.get('/books/:id', (req, res) => {
    const filtered = books.filter(b => b.id.toString() === req.params.id)
    if (filtered.length === 0) {
        res.status(404).send()
    } else {
        res.send(filtered[0])
    }
})

app.post('/books', (req, res) => {
    books.push({ id: id++, ...req.body })
    res.status(201).send()
})

app.delete('/books/:id', (req, res) => {
    books = books.filter(b => b.id.toString() !== req.params.id)
    res.status(204).send()
})

app.listen(3000)
