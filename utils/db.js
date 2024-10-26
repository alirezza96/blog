import mysql from "mysql"

const config = {
    host: "localhost",
    user: "root",
    password: "",
    database: "blog"
}

const connection = mysql.createConnection(config)


connection.connect((err) => {
    if (err) {
        console.log("connected to database failed")
    }
    console.log("database connected")
})
export default connection