const express = require("express");
const app = express();

const PORT = process.env.PORT || 3000;

app.use(express.json());

app.get("/", (req, res) => {
  res.json({
    application: "api-demo",
    environment: process.env.NODE_ENV,
    status: "running"
  });
});

app.get("/health", (req, res) => {
  res.status(200).json({
    status: "healthy"
  });
});

app.get("/api/version", (req, res) => {
  res.json({
    version: "1.0.0"
  });
});

app.listen(PORT, () => {
  console.log(`API running on port ${PORT}`);
});