const express = require("express");
const app = express();
const path = require("path");
const apartmentsRouter = require("./public/routes/apartments");
app.use(express.static(path.join(__dirname, "public")));
app.use(express.json());
app.use("/api/apartments", apartmentsRouter);
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "public", "index.html"));
});
app.listen(3000, () => {
  console.log("Server radi na http://localhost:3000");
});
