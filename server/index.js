const express = require("express");

const app = express();

const PORT = process.env.PORT || 5000;

app.use("/student", require("./routes/student"));

app.listen(PORT, () => {
  console.log(`Server listening at ${PORT}`);
});
