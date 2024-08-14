const express = require('express');
const authRouter = require('./routes/auth');
const adminRouter = require('./routes/admin');
const productRouter = require('./routes/product');
const userRouter = require("./routes/user");
const bcryptjs = require("bcryptjs");
const mongoose = require('mongoose');

const PORT = 3000;
const app = express();
const DB = "mongodb+srv://utkarsh4pandey:Utkarsh06@cluster0.sza9shh.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";
// create an API
 
// middleware 
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);


// mongoose connection
mongoose.connect(DB).then(() => {
    console.log("Connection Successful");
}).catch((e) => {
    console.log(e);
});



app.listen(PORT, () => {
    console.log(`connected at port ${PORT}`);
});
