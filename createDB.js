var MongoClient = require('mongodb').MongoClient

const uri = "mongodb://127.0.0.1:27017/"
const client = new MongoClient(uri)
async function run() {
try {
await client.connect();
var database = client.db("fnaf");
database.dropDatabase()
database = client.db("fnaf");
const animatronics = database.collection("animatronics");
const result = await animatronics.insertOne({name:"Fazbear"});
console.log(`${result} documents were inserted`);
} finally {
await client.close();
}
}
run()
