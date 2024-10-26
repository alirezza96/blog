import fs from "fs"
import path from "path"
import db from "../utils/db.js"
const __dirname = import.meta.dirname

console.log(path.extname('articles-ddl.sql'))
const directory = fs.readdir(__dirname, (err, files) => {
    if (err) console.log("unable to scan directory: ", err)
    // filter sql files 
    const sqlFiles = files.filter(file => path.extname(file) === ".sql")
    try {
        sqlFiles.map(file => db.query(fs.readFileSync(path.resolve(file), "utf-8")))
        console.log("database seeded successfully")
    } catch (err) {
        throw err
    }
})

