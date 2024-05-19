const express = require("express");
const mongoose = require("mongoose");

const authRouter = require("./routes/auth");
const PORT = process.env.PORT || 3000;
const app = express();
const DB =
  "mongodb+srv://mishratushar8890:220604@cluster0.31grcgb.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

// middlewares
app.use(express.json());
app.use(authRouter);

mongoose
  .connect(DB)
  .then(() => {
    console.log("DB Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});
